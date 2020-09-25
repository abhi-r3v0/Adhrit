.class public final enum Lo/setOffscreenPageLimit$onMessageChannelReady;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setOffscreenPageLimit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/setOffscreenPageLimit$onMessageChannelReady;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/setOffscreenPageLimit$onMessageChannelReady;

.field private static final synthetic extraCallback:[Lo/setOffscreenPageLimit$onMessageChannelReady;

.field public static final enum onNavigationEvent:Lo/setOffscreenPageLimit$onMessageChannelReady;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 39
    new-instance v0, Lo/setOffscreenPageLimit$onMessageChannelReady;

    const/4 v1, 0x0

    const-string v2, "INTERNAL"

    invoke-direct {v0, v2, v1}, Lo/setOffscreenPageLimit$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/setOffscreenPageLimit$onMessageChannelReady;->onNavigationEvent:Lo/setOffscreenPageLimit$onMessageChannelReady;

    .line 40
    new-instance v0, Lo/setOffscreenPageLimit$onMessageChannelReady;

    const/4 v2, 0x1

    const-string v3, "EXTERNAL"

    invoke-direct {v0, v3, v2}, Lo/setOffscreenPageLimit$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/setOffscreenPageLimit$onMessageChannelReady;->ICustomTabsCallback:Lo/setOffscreenPageLimit$onMessageChannelReady;

    const/4 v3, 0x2

    new-array v3, v3, [Lo/setOffscreenPageLimit$onMessageChannelReady;

    .line 38
    sget-object v4, Lo/setOffscreenPageLimit$onMessageChannelReady;->onNavigationEvent:Lo/setOffscreenPageLimit$onMessageChannelReady;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lo/setOffscreenPageLimit$onMessageChannelReady;->extraCallback:[Lo/setOffscreenPageLimit$onMessageChannelReady;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/setOffscreenPageLimit$onMessageChannelReady;
    .locals 1

    .line 38
    const-class v0, Lo/setOffscreenPageLimit$onMessageChannelReady;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/setOffscreenPageLimit$onMessageChannelReady;

    return-object p0
.end method

.method public static values()[Lo/setOffscreenPageLimit$onMessageChannelReady;
    .locals 1

    .line 38
    sget-object v0, Lo/setOffscreenPageLimit$onMessageChannelReady;->extraCallback:[Lo/setOffscreenPageLimit$onMessageChannelReady;

    invoke-virtual {v0}, [Lo/setOffscreenPageLimit$onMessageChannelReady;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/setOffscreenPageLimit$onMessageChannelReady;

    return-object v0
.end method
