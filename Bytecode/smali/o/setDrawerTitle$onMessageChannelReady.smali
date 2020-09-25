.class public final enum Lo/setDrawerTitle$onMessageChannelReady;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setDrawerTitle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/setDrawerTitle$onMessageChannelReady;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/setDrawerTitle$onMessageChannelReady;

.field private static final synthetic extraCallback:[Lo/setDrawerTitle$onMessageChannelReady;

.field public static final enum onNavigationEvent:Lo/setDrawerTitle$onMessageChannelReady;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1925
    new-instance v0, Lo/setDrawerTitle$onMessageChannelReady;

    const/4 v1, 0x0

    const-string v2, "RECTANGLE"

    invoke-direct {v0, v2, v1}, Lo/setDrawerTitle$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/setDrawerTitle$onMessageChannelReady;->onNavigationEvent:Lo/setDrawerTitle$onMessageChannelReady;

    .line 1926
    new-instance v0, Lo/setDrawerTitle$onMessageChannelReady;

    const/4 v2, 0x1

    const-string v3, "OVAL"

    invoke-direct {v0, v3, v2}, Lo/setDrawerTitle$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/setDrawerTitle$onMessageChannelReady;->ICustomTabsCallback:Lo/setDrawerTitle$onMessageChannelReady;

    const/4 v3, 0x2

    new-array v3, v3, [Lo/setDrawerTitle$onMessageChannelReady;

    .line 1924
    sget-object v4, Lo/setDrawerTitle$onMessageChannelReady;->onNavigationEvent:Lo/setDrawerTitle$onMessageChannelReady;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lo/setDrawerTitle$onMessageChannelReady;->extraCallback:[Lo/setDrawerTitle$onMessageChannelReady;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1924
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/setDrawerTitle$onMessageChannelReady;
    .locals 1

    .line 1924
    const-class v0, Lo/setDrawerTitle$onMessageChannelReady;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/setDrawerTitle$onMessageChannelReady;

    return-object p0
.end method

.method public static values()[Lo/setDrawerTitle$onMessageChannelReady;
    .locals 1

    .line 1924
    sget-object v0, Lo/setDrawerTitle$onMessageChannelReady;->extraCallback:[Lo/setDrawerTitle$onMessageChannelReady;

    invoke-virtual {v0}, [Lo/setDrawerTitle$onMessageChannelReady;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/setDrawerTitle$onMessageChannelReady;

    return-object v0
.end method
