.class public final enum Lo/drawSelectorCompat$extraCallback;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/drawSelectorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/drawSelectorCompat$extraCallback;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/drawSelectorCompat$extraCallback;

.field private static final synthetic onMessageChannelReady:[Lo/drawSelectorCompat$extraCallback;

.field public static final enum onPostMessage:Lo/drawSelectorCompat$extraCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 290
    new-instance v0, Lo/drawSelectorCompat$extraCallback;

    const/4 v1, 0x0

    const-string v2, "MEMORY"

    invoke-direct {v0, v2, v1}, Lo/drawSelectorCompat$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/drawSelectorCompat$extraCallback;->ICustomTabsCallback:Lo/drawSelectorCompat$extraCallback;

    .line 295
    new-instance v0, Lo/drawSelectorCompat$extraCallback;

    const/4 v2, 0x1

    const-string v3, "QUALITY"

    invoke-direct {v0, v3, v2}, Lo/drawSelectorCompat$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/drawSelectorCompat$extraCallback;->onPostMessage:Lo/drawSelectorCompat$extraCallback;

    const/4 v3, 0x2

    new-array v3, v3, [Lo/drawSelectorCompat$extraCallback;

    .line 285
    sget-object v4, Lo/drawSelectorCompat$extraCallback;->ICustomTabsCallback:Lo/drawSelectorCompat$extraCallback;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lo/drawSelectorCompat$extraCallback;->onMessageChannelReady:[Lo/drawSelectorCompat$extraCallback;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 285
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/drawSelectorCompat$extraCallback;
    .locals 1

    .line 285
    const-class v0, Lo/drawSelectorCompat$extraCallback;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/drawSelectorCompat$extraCallback;

    return-object p0
.end method

.method public static values()[Lo/drawSelectorCompat$extraCallback;
    .locals 1

    .line 285
    sget-object v0, Lo/drawSelectorCompat$extraCallback;->onMessageChannelReady:[Lo/drawSelectorCompat$extraCallback;

    invoke-virtual {v0}, [Lo/drawSelectorCompat$extraCallback;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/drawSelectorCompat$extraCallback;

    return-object v0
.end method
