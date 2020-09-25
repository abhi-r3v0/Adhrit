.class final Lo/buildPennant$1;
.super Lo/buildPennant$extraCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/buildPennant;->extraCallback()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, v0}, Lo/buildPennant$extraCallback;-><init>(B)V

    return-void
.end method


# virtual methods
.method final extraCallback(Lo/onServerInfoUpdate;I)I
    .locals 0

    .line 71
    invoke-interface {p1}, Lo/onServerInfoUpdate;->extraCallback()I

    move-result p1

    return p1
.end method
