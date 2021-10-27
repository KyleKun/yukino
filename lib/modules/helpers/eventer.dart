typedef EventerSubscriber<T> = void Function(T event);

class Eventer<T> {
  final List<EventerSubscriber<T>> _subscribers = <EventerSubscriber<T>>[];

  void Function() subscribe(final EventerSubscriber<T> sub) {
    _subscribers.add(sub);
    return () => unsubscribe(sub);
  }

  void unsubscribe(final EventerSubscriber<T> sub) {
    _subscribers.remove(sub);
  }

  void dispatch(final T event) {
    for (final EventerSubscriber<T> sub in _subscribers) {
      sub(event);
    }
  }

  void destroy() {
    _subscribers.clear();
  }
}
