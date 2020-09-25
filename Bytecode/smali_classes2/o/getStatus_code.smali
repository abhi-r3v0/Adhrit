.class abstract Lo/getStatus_code;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract extraCallback(I[BII)I
.end method

.method abstract onNavigationEvent(Ljava/lang/CharSequence;[BII)I
.end method

.method final onPostMessage([BII)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lo/getStatus_code;->extraCallback(I[BII)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method
