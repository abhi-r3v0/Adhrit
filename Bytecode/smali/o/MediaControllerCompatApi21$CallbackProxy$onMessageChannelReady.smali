.class public final enum Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/MediaControllerCompatApi21$CallbackProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;

.field public static final enum ON_ANY:Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;

.field public static final enum ON_CREATE:Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;

.field public static final enum ON_DESTROY:Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;

.field public static final enum ON_PAUSE:Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;

.field public static final enum ON_RESUME:Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;

.field public static final enum ON_START:Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;

.field public static final enum ON_STOP:Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 132
    new-instance v0, Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;

    const/4 v1, 0x0

    const-string v2, "ON_CREATE"

    invoke-direct {v0, v2, v1}, Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;->ON_CREATE:Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;

    .line 136
    new-instance v0, Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;

    const/4 v2, 0x1

    const-string v3, "ON_START"

    invoke-direct {v0, v3, v2}, Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;->ON_START:Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;

    .line 140
    new-instance v0, Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;

    const/4 v3, 0x2

    const-string v4, "ON_RESUME"

    invoke-direct {v0, v4, v3}, Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;->ON_RESUME:Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;

    .line 144
    new-instance v0, Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;

    const/4 v4, 0x3

    const-string v5, "ON_PAUSE"

    invoke-direct {v0, v5, v4}, Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;->ON_PAUSE:Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;

    .line 148
    new-instance v0, Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;

    const/4 v5, 0x4

    const-string v6, "ON_STOP"

    invoke-direct {v0, v6, v5}, Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;->ON_STOP:Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;

    .line 152
    new-instance v0, Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;

    const/4 v6, 0x5

    const-string v7, "ON_DESTROY"

    invoke-direct {v0, v7, v6}, Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;->ON_DESTROY:Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;

    .line 156
    new-instance v0, Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;

    const/4 v7, 0x6

    const-string v8, "ON_ANY"

    invoke-direct {v0, v8, v7}, Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;->ON_ANY:Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;

    const/4 v8, 0x7

    new-array v8, v8, [Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;

    .line 127
    sget-object v9, Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;->ON_CREATE:Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;

    aput-object v9, v8, v1

    sget-object v1, Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;->ON_START:Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;

    aput-object v1, v8, v2

    sget-object v1, Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;->ON_RESUME:Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;

    aput-object v1, v8, v3

    sget-object v1, Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;->ON_PAUSE:Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;

    aput-object v1, v8, v4

    sget-object v1, Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;->ON_STOP:Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;

    aput-object v1, v8, v5

    sget-object v1, Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;->ON_DESTROY:Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;

    aput-object v1, v8, v6

    aput-object v0, v8, v7

    sput-object v8, Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;->$VALUES:[Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 128
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;
    .locals 1

    .line 127
    const-class v0, Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;

    return-object p0
.end method

.method public static values()[Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;
    .locals 1

    .line 127
    sget-object v0, Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;->$VALUES:[Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;

    invoke-virtual {v0}, [Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;

    return-object v0
.end method
