.class final Lo/nativeRenderFrame;
.super Ljava/lang/Object;

# interfaces
.implements Lo/nativeGetYOffset;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/nativeGetDurationMs;)V
    .locals 0

    invoke-direct {p0}, Lo/nativeRenderFrame;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage([BII)[B
    .locals 0

    add-int/2addr p3, p2

    invoke-static {p1, p2, p3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    return-object p1
.end method
