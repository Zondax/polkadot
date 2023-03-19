FROM paritytech/ci-linux:production

RUN mkdir /nix && mkdir /app && chown nonroot /nix && chown nonroot /app

USER nonroot
ENV USER=nonroot

# --network=host during build is necessary for this!
RUN curl -L https://nixos.org/nix/install | sh

ENV PATH="/home/nonroot/.nix-profile/bin:${PATH}"
