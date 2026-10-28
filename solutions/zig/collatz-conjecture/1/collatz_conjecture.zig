// Please implement the `ComputationError.IllegalArgument` error.
pub const ComputationError = error{
    IllegalArgument,
};

pub fn steps(number: usize) anyerror!usize {
    var nsteps: usize = 0;
    var final_number: usize = 0;

    if (number == 0) {
        return ComputationError.IllegalArgument;
    }

    if (number == 1) {
        return nsteps;
    }

    final_number = number;

    while (true) {
        if (final_number == 1) break;
        if (@mod(final_number, 2) == 0) {
            final_number = final_number / 2;
            nsteps += 1;
            continue;
        } else {
            final_number = (final_number * 3) + 1;
            nsteps += 1;
            continue;
        }
    }

    return nsteps;
}
