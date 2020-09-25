.class public final enum Lo/setDrawerTitle$extraCallback;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setDrawerTitle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/setDrawerTitle$extraCallback;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/setDrawerTitle$extraCallback;

.field private static enum extraCallback:Lo/setDrawerTitle$extraCallback;

.field private static final synthetic onMessageChannelReady:[Lo/setDrawerTitle$extraCallback;

.field public static final enum onNavigationEvent:Lo/setDrawerTitle$extraCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1981
    new-instance v0, Lo/setDrawerTitle$extraCallback;

    const/4 v1, 0x0

    const-string v2, "OFF"

    invoke-direct {v0, v2, v1}, Lo/setDrawerTitle$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/setDrawerTitle$extraCallback;->extraCallback:Lo/setDrawerTitle$extraCallback;

    .line 1986
    new-instance v0, Lo/setDrawerTitle$extraCallback;

    const/4 v2, 0x1

    const-string v3, "ON_TOUCH"

    invoke-direct {v0, v3, v2}, Lo/setDrawerTitle$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/setDrawerTitle$extraCallback;->onNavigationEvent:Lo/setDrawerTitle$extraCallback;

    .line 1991
    new-instance v0, Lo/setDrawerTitle$extraCallback;

    const/4 v3, 0x2

    const-string v4, "ON"

    invoke-direct {v0, v4, v3}, Lo/setDrawerTitle$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/setDrawerTitle$extraCallback;->ICustomTabsCallback:Lo/setDrawerTitle$extraCallback;

    const/4 v4, 0x3

    new-array v4, v4, [Lo/setDrawerTitle$extraCallback;

    .line 1977
    sget-object v5, Lo/setDrawerTitle$extraCallback;->extraCallback:Lo/setDrawerTitle$extraCallback;

    aput-object v5, v4, v1

    sget-object v1, Lo/setDrawerTitle$extraCallback;->onNavigationEvent:Lo/setDrawerTitle$extraCallback;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lo/setDrawerTitle$extraCallback;->onMessageChannelReady:[Lo/setDrawerTitle$extraCallback;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1977
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/setDrawerTitle$extraCallback;
    .locals 1

    .line 1977
    const-class v0, Lo/setDrawerTitle$extraCallback;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/setDrawerTitle$extraCallback;

    return-object p0
.end method

.method public static values()[Lo/setDrawerTitle$extraCallback;
    .locals 1

    .line 1977
    sget-object v0, Lo/setDrawerTitle$extraCallback;->onMessageChannelReady:[Lo/setDrawerTitle$extraCallback;

    invoke-virtual {v0}, [Lo/setDrawerTitle$extraCallback;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/setDrawerTitle$extraCallback;

    return-object v0
.end method
