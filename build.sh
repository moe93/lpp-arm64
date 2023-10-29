#!/bin/bash
set -e

docker buildx build . --output type=docker --platform linux/arm64 --file ./Dockerfile --tag="modeh93/lpp:linux-arm64" || exit 1;

echo "Successfully built Lemmy Post Purger (LPP). Release.";

docker push "modeh93/lpp:linux-arm64" || exit 1;

echo "Successfully pushed Lemmy Post Purger (LPP). Build UI";
