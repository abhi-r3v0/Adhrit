.class public final Lo/fromInt;
.super Lo/R$integer;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/R$integer<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static onMessageChannelReady:Lo/fromInt;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/R$integer;-><init>()V

    return-void
.end method

.method protected static declared-synchronized onPostMessage()Lo/fromInt;
    .locals 2

    const-class v0, Lo/fromInt;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lo/fromInt;->onMessageChannelReady:Lo/fromInt;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lo/fromInt;

    invoke-direct {v1}, Lo/fromInt;-><init>()V

    sput-object v1, Lo/fromInt;->onMessageChannelReady:Lo/fromInt;

    .line 4
    :cond_0
    sget-object v1, Lo/fromInt;->onMessageChannelReady:Lo/fromInt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method protected final F_()Ljava/lang/String;
    .locals 1

    const-string v0, "fpr_enabled"

    return-object v0
.end method

.method protected final onMessageChannelReady()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.firebase.perf.SdkEnabled"

    return-object v0
.end method
