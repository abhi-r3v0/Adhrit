.class public final enum Lo/setDrawerTitle$onTransact;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setDrawerTitle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "onTransact"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/setDrawerTitle$onTransact;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/setDrawerTitle$onTransact;

.field private static final synthetic asInterface:[Lo/setDrawerTitle$onTransact;

.field public static final enum extraCallback:Lo/setDrawerTitle$onTransact;

.field public static final enum onMessageChannelReady:Lo/setDrawerTitle$onTransact;

.field public static final enum onNavigationEvent:Lo/setDrawerTitle$onTransact;

.field public static final enum onPostMessage:Lo/setDrawerTitle$onTransact;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 2005
    new-instance v0, Lo/setDrawerTitle$onTransact;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lo/setDrawerTitle$onTransact;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/setDrawerTitle$onTransact;->onMessageChannelReady:Lo/setDrawerTitle$onTransact;

    .line 2014
    new-instance v0, Lo/setDrawerTitle$onTransact;

    const/4 v2, 0x1

    const-string v3, "SAMPLING"

    invoke-direct {v0, v3, v2}, Lo/setDrawerTitle$onTransact;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/setDrawerTitle$onTransact;->onNavigationEvent:Lo/setDrawerTitle$onTransact;

    .line 2022
    new-instance v0, Lo/setDrawerTitle$onTransact;

    const/4 v3, 0x2

    const-string v4, "RESIZE_INSIDE"

    invoke-direct {v0, v4, v3}, Lo/setDrawerTitle$onTransact;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/setDrawerTitle$onTransact;->ICustomTabsCallback:Lo/setDrawerTitle$onTransact;

    .line 2031
    new-instance v0, Lo/setDrawerTitle$onTransact;

    const/4 v4, 0x3

    const-string v5, "RESIZE_FIT"

    invoke-direct {v0, v5, v4}, Lo/setDrawerTitle$onTransact;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/setDrawerTitle$onTransact;->extraCallback:Lo/setDrawerTitle$onTransact;

    .line 2038
    new-instance v0, Lo/setDrawerTitle$onTransact;

    const/4 v5, 0x4

    const-string v6, "RESIZE_EXACT"

    invoke-direct {v0, v6, v5}, Lo/setDrawerTitle$onTransact;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/setDrawerTitle$onTransact;->onPostMessage:Lo/setDrawerTitle$onTransact;

    const/4 v6, 0x5

    new-array v6, v6, [Lo/setDrawerTitle$onTransact;

    .line 2000
    sget-object v7, Lo/setDrawerTitle$onTransact;->onMessageChannelReady:Lo/setDrawerTitle$onTransact;

    aput-object v7, v6, v1

    sget-object v1, Lo/setDrawerTitle$onTransact;->onNavigationEvent:Lo/setDrawerTitle$onTransact;

    aput-object v1, v6, v2

    sget-object v1, Lo/setDrawerTitle$onTransact;->ICustomTabsCallback:Lo/setDrawerTitle$onTransact;

    aput-object v1, v6, v3

    sget-object v1, Lo/setDrawerTitle$onTransact;->extraCallback:Lo/setDrawerTitle$onTransact;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lo/setDrawerTitle$onTransact;->asInterface:[Lo/setDrawerTitle$onTransact;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2000
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/setDrawerTitle$onTransact;
    .locals 1

    .line 2000
    const-class v0, Lo/setDrawerTitle$onTransact;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/setDrawerTitle$onTransact;

    return-object p0
.end method

.method public static values()[Lo/setDrawerTitle$onTransact;
    .locals 1

    .line 2000
    sget-object v0, Lo/setDrawerTitle$onTransact;->asInterface:[Lo/setDrawerTitle$onTransact;

    invoke-virtual {v0}, [Lo/setDrawerTitle$onTransact;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/setDrawerTitle$onTransact;

    return-object v0
.end method
