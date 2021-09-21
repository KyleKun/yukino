import { join } from "path";
import { readFile, writeFile } from "fs-extra";
import png2icons from "png2icons";
import { spawn, promisifyChildProcess } from "../../../../spawn";
import { getVersion } from "../../../../helpers/version";
import { Logger } from "../../../../logger";
import { config } from "../../../../config";

const icns = join(config.base, "build/macos/icon.icns");
export const buildDir = join(config.base, "build/macos/Build/Products/Release");

const logger = new Logger("build:macos:dmg");

export const build = async () => {
    const version = await getVersion();

    await writeFile(
        icns,
        png2icons.createICNS(
            await readFile(config.macos.icon),
            png2icons.BEZIER,
            256
        )
    );

    const out = join(
        config.macos.packed,
        `${config.name} v${version} Installer.dmg`
    );
    await promisifyChildProcess(
        await spawn(
            "create-dmg",
            [
                "--volname",
                `"${config.name} v${version} Installer"`,
                "--volicon",
                `"${icns}"`,
                // "--background",
                // `"installer_background.jpg"`,
                "--window-pos",
                "200",
                "120",
                "--window-size",
                "800",
                "529",
                "--icon-size",
                "130",
                "--text-size",
                "14",
                "--icon",
                `"${config.code}.app"`,
                "260",
                "250",
                "--hide-extension",
                `"${config.code}.app"`,
                "--app-drop-link 540 250",
                "--hdiutil-quiet",
                `"${out}"`,
                `"${buildDir}""`,
            ],
            config.base
        )
    );

    logger.log(`Dmg created: ${out}`);
};
