// import 'package:freezed_annotation/freezed_annotation.dart';

// class ReservationsDispatcher {
//   final _controller = StreamController<ReservationsAction>.broadcast();
//   late ReservationsRepository _reservations;
//   late UserCubit _user;

//   ReservationsDispatcher() {
//     _reservations = injector.get<ReservationsRepository>();
//     _user = injector.get<UserCubit>();
//   }

//   Stream<ReservationsAction> get stream => _controller.stream;

//   Future<void> cancel(
//     Reservation reservation, {
//     required Condominium condominium,
//   }) async {
//     try {
//       final newReservation =
//           await _reservations.cancelOf(condominium, reservation);
//       _controller.add(
//         ReservationsAction.cancelled(
//           newReservation,
//         ),
//       );
//     } catch (e) {
//       _controller.add(ReservationsAction.cancelationFailed(reservation, e));
//     }
//   }

//   Future<Reservation> reserveOn({
//     required Person reserver,
//     required ReservablePeriod period,
//     required CondominiumUnit unit,
//     required bool isExclusive,
//   }) async {
//     final user = _user.snapshot();

//     try {
//       final created = await _reservations.insertOn(
//         user.condominium,
//         by: user,
//         endedAt: period.endAt,
//         service: period.service,
//         startedAt: period.startAt,
//         reserver: reserver,
//         unit: unit,
//         isExclusive: isExclusive,
//       );

//       _controller.add(ReservationsAction.inserted(created));
//       return created;
//     } catch (err) {
//       _controller.add(ReservationsAction.insertionFailed(err));
//       rethrow;
//     }
//   }
// }
