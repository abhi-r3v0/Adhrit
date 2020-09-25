.class final enum Lo/setOnCloseListener$onMessageChannelReady;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setOnCloseListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/setOnCloseListener$onMessageChannelReady;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/setOnCloseListener$onMessageChannelReady;

.field private static final synthetic extraCallback:[Lo/setOnCloseListener$onMessageChannelReady;

.field public static final enum onNavigationEvent:Lo/setOnCloseListener$onMessageChannelReady;

.field public static final enum onPostMessage:Lo/setOnCloseListener$onMessageChannelReady;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 24
    new-instance v0, Lo/setOnCloseListener$onMessageChannelReady;

    const/4 v1, 0x0

    const-string v2, "MODULATOR"

    invoke-direct {v0, v2, v1}, Lo/setOnCloseListener$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/setOnCloseListener$onMessageChannelReady;->onNavigationEvent:Lo/setOnCloseListener$onMessageChannelReady;

    .line 25
    new-instance v0, Lo/setOnCloseListener$onMessageChannelReady;

    const/4 v2, 0x1

    const-string v3, "DEMODULATOR"

    invoke-direct {v0, v3, v2}, Lo/setOnCloseListener$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/setOnCloseListener$onMessageChannelReady;->onPostMessage:Lo/setOnCloseListener$onMessageChannelReady;

    .line 26
    new-instance v0, Lo/setOnCloseListener$onMessageChannelReady;

    const/4 v3, 0x2

    const-string v4, "BOTH"

    invoke-direct {v0, v4, v3}, Lo/setOnCloseListener$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/setOnCloseListener$onMessageChannelReady;->ICustomTabsCallback:Lo/setOnCloseListener$onMessageChannelReady;

    const/4 v4, 0x3

    new-array v4, v4, [Lo/setOnCloseListener$onMessageChannelReady;

    .line 23
    sget-object v5, Lo/setOnCloseListener$onMessageChannelReady;->onNavigationEvent:Lo/setOnCloseListener$onMessageChannelReady;

    aput-object v5, v4, v1

    sget-object v1, Lo/setOnCloseListener$onMessageChannelReady;->onPostMessage:Lo/setOnCloseListener$onMessageChannelReady;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lo/setOnCloseListener$onMessageChannelReady;->extraCallback:[Lo/setOnCloseListener$onMessageChannelReady;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/setOnCloseListener$onMessageChannelReady;
    .locals 1

    .line 23
    const-class v0, Lo/setOnCloseListener$onMessageChannelReady;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/setOnCloseListener$onMessageChannelReady;

    return-object p0
.end method

.method public static values()[Lo/setOnCloseListener$onMessageChannelReady;
    .locals 1

    .line 23
    sget-object v0, Lo/setOnCloseListener$onMessageChannelReady;->extraCallback:[Lo/setOnCloseListener$onMessageChannelReady;

    invoke-virtual {v0}, [Lo/setOnCloseListener$onMessageChannelReady;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/setOnCloseListener$onMessageChannelReady;

    return-object v0
.end method
