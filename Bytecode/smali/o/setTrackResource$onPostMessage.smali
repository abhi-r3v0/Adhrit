.class public final enum Lo/setTrackResource$onPostMessage;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setTrackResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/setTrackResource$onPostMessage;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000e\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/TabMenuConfig$Submenu;",
        "",
        "id",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getId",
        "()Ljava/lang/String;",
        "HOME",
        "MY_CARDS",
        "UNBILLED",
        "BENEFITS",
        "MAX",
        "TRACK_BANK_BALANCE",
        "LINE_MANAGEMENT",
        "WIN",
        "DISCOVER",
        "WEB_FARM",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/setTrackResource$onPostMessage;

.field public static final enum ICustomTabsCallback$Stub:Lo/setTrackResource$onPostMessage;

.field public static final enum asBinder:Lo/setTrackResource$onPostMessage;

.field public static final enum asInterface:Lo/setTrackResource$onPostMessage;

.field public static final enum extraCallback:Lo/setTrackResource$onPostMessage;

.field public static final enum onMessageChannelReady:Lo/setTrackResource$onPostMessage;

.field public static final enum onNavigationEvent:Lo/setTrackResource$onPostMessage;

.field public static final enum onPostMessage:Lo/setTrackResource$onPostMessage;

.field public static final enum onRelationshipValidationResult:Lo/setTrackResource$onPostMessage;

.field public static final enum onTransact:Lo/setTrackResource$onPostMessage;

.field private static final synthetic warmup:[Lo/setTrackResource$onPostMessage;


# instance fields
.field public final ICustomTabsService:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0xa

    new-array v0, v0, [Lo/setTrackResource$onPostMessage;

    new-instance v1, Lo/setTrackResource$onPostMessage;

    const/4 v2, 0x0

    const-string v3, "HOME"

    const-string v4, "home"

    .line 118
    invoke-direct {v1, v3, v2, v4}, Lo/setTrackResource$onPostMessage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lo/setTrackResource$onPostMessage;->ICustomTabsCallback:Lo/setTrackResource$onPostMessage;

    aput-object v1, v0, v2

    new-instance v1, Lo/setTrackResource$onPostMessage;

    const/4 v2, 0x1

    const-string v3, "MY_CARDS"

    const-string v4, "control_farm"

    .line 119
    invoke-direct {v1, v3, v2, v4}, Lo/setTrackResource$onPostMessage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lo/setTrackResource$onPostMessage;->onPostMessage:Lo/setTrackResource$onPostMessage;

    aput-object v1, v0, v2

    new-instance v1, Lo/setTrackResource$onPostMessage;

    const/4 v2, 0x2

    const-string v3, "UNBILLED"

    const-string/jumbo v4, "unbilled_farm"

    .line 120
    invoke-direct {v1, v3, v2, v4}, Lo/setTrackResource$onPostMessage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lo/setTrackResource$onPostMessage;->onMessageChannelReady:Lo/setTrackResource$onPostMessage;

    aput-object v1, v0, v2

    new-instance v1, Lo/setTrackResource$onPostMessage;

    const/4 v2, 0x3

    const-string v3, "BENEFITS"

    const-string v4, "benefits_farm"

    .line 121
    invoke-direct {v1, v3, v2, v4}, Lo/setTrackResource$onPostMessage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lo/setTrackResource$onPostMessage;->onNavigationEvent:Lo/setTrackResource$onPostMessage;

    aput-object v1, v0, v2

    new-instance v1, Lo/setTrackResource$onPostMessage;

    const/4 v2, 0x4

    const-string v3, "MAX"

    const-string v4, "max_farm"

    .line 124
    invoke-direct {v1, v3, v2, v4}, Lo/setTrackResource$onPostMessage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lo/setTrackResource$onPostMessage;->extraCallback:Lo/setTrackResource$onPostMessage;

    aput-object v1, v0, v2

    new-instance v1, Lo/setTrackResource$onPostMessage;

    const/4 v2, 0x5

    const-string v3, "TRACK_BANK_BALANCE"

    const-string/jumbo v4, "track_bb_details"

    .line 125
    invoke-direct {v1, v3, v2, v4}, Lo/setTrackResource$onPostMessage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lo/setTrackResource$onPostMessage;->asInterface:Lo/setTrackResource$onPostMessage;

    aput-object v1, v0, v2

    new-instance v1, Lo/setTrackResource$onPostMessage;

    const/4 v2, 0x6

    const-string v3, "LINE_MANAGEMENT"

    const-string v4, "line_management"

    .line 126
    invoke-direct {v1, v3, v2, v4}, Lo/setTrackResource$onPostMessage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lo/setTrackResource$onPostMessage;->ICustomTabsCallback$Stub:Lo/setTrackResource$onPostMessage;

    aput-object v1, v0, v2

    new-instance v1, Lo/setTrackResource$onPostMessage;

    const/4 v2, 0x7

    const-string v3, "WIN"

    const-string/jumbo v4, "win_farm"

    .line 129
    invoke-direct {v1, v3, v2, v4}, Lo/setTrackResource$onPostMessage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lo/setTrackResource$onPostMessage;->onRelationshipValidationResult:Lo/setTrackResource$onPostMessage;

    aput-object v1, v0, v2

    new-instance v1, Lo/setTrackResource$onPostMessage;

    const/16 v2, 0x8

    const-string v3, "DISCOVER"

    const-string v4, "discover_farm"

    .line 130
    invoke-direct {v1, v3, v2, v4}, Lo/setTrackResource$onPostMessage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lo/setTrackResource$onPostMessage;->onTransact:Lo/setTrackResource$onPostMessage;

    aput-object v1, v0, v2

    new-instance v1, Lo/setTrackResource$onPostMessage;

    const/16 v2, 0x9

    const-string v3, "WEB_FARM"

    const-string/jumbo v4, "web_farm"

    .line 131
    invoke-direct {v1, v3, v2, v4}, Lo/setTrackResource$onPostMessage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lo/setTrackResource$onPostMessage;->asBinder:Lo/setTrackResource$onPostMessage;

    aput-object v1, v0, v2

    sput-object v0, Lo/setTrackResource$onPostMessage;->warmup:[Lo/setTrackResource$onPostMessage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 117
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lo/setTrackResource$onPostMessage;->ICustomTabsService:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/setTrackResource$onPostMessage;
    .locals 1

    const-class v0, Lo/setTrackResource$onPostMessage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/setTrackResource$onPostMessage;

    return-object p0
.end method

.method public static values()[Lo/setTrackResource$onPostMessage;
    .locals 1

    sget-object v0, Lo/setTrackResource$onPostMessage;->warmup:[Lo/setTrackResource$onPostMessage;

    invoke-virtual {v0}, [Lo/setTrackResource$onPostMessage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/setTrackResource$onPostMessage;

    return-object v0
.end method
