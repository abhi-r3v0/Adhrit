.class public final enum Lo/setUserProperties$validateRelationship$onMessageChannelReady;
.super Ljava/lang/Enum;

# interfaces
.implements Lo/setController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setUserProperties$validateRelationship;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/setUserProperties$validateRelationship$onMessageChannelReady;",
        ">;",
        "Lo/setController;"
    }
.end annotation


# static fields
.field private static final enum ICustomTabsCallback:Lo/setUserProperties$validateRelationship$onMessageChannelReady;

.field private static final synthetic ICustomTabsCallback$Stub:[Lo/setUserProperties$validateRelationship$onMessageChannelReady;

.field private static final asInterface:Lo/setHierarchy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setHierarchy<",
            "Lo/setUserProperties$validateRelationship$onMessageChannelReady;",
            ">;"
        }
    .end annotation
.end field

.field private static final enum extraCallback:Lo/setUserProperties$validateRelationship$onMessageChannelReady;

.field private static final enum onMessageChannelReady:Lo/setUserProperties$validateRelationship$onMessageChannelReady;

.field public static final enum onNavigationEvent:Lo/setUserProperties$validateRelationship$onMessageChannelReady;

.field private static final enum onPostMessage:Lo/setUserProperties$validateRelationship$onMessageChannelReady;


# instance fields
.field private final asBinder:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lo/setUserProperties$validateRelationship$onMessageChannelReady;

    const/4 v1, 0x0

    const-string v2, "DEFAULT"

    invoke-direct {v0, v2, v1, v1}, Lo/setUserProperties$validateRelationship$onMessageChannelReady;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setUserProperties$validateRelationship$onMessageChannelReady;->onNavigationEvent:Lo/setUserProperties$validateRelationship$onMessageChannelReady;

    new-instance v0, Lo/setUserProperties$validateRelationship$onMessageChannelReady;

    const/4 v2, 0x1

    const-string v3, "UNMETERED_ONLY"

    invoke-direct {v0, v3, v2, v2}, Lo/setUserProperties$validateRelationship$onMessageChannelReady;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setUserProperties$validateRelationship$onMessageChannelReady;->extraCallback:Lo/setUserProperties$validateRelationship$onMessageChannelReady;

    new-instance v0, Lo/setUserProperties$validateRelationship$onMessageChannelReady;

    const/4 v3, 0x2

    const-string v4, "UNMETERED_OR_DAILY"

    invoke-direct {v0, v4, v3, v3}, Lo/setUserProperties$validateRelationship$onMessageChannelReady;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setUserProperties$validateRelationship$onMessageChannelReady;->onPostMessage:Lo/setUserProperties$validateRelationship$onMessageChannelReady;

    new-instance v0, Lo/setUserProperties$validateRelationship$onMessageChannelReady;

    const/4 v4, 0x3

    const-string v5, "FAST_IF_RADIO_AWAKE"

    invoke-direct {v0, v5, v4, v4}, Lo/setUserProperties$validateRelationship$onMessageChannelReady;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setUserProperties$validateRelationship$onMessageChannelReady;->onMessageChannelReady:Lo/setUserProperties$validateRelationship$onMessageChannelReady;

    new-instance v0, Lo/setUserProperties$validateRelationship$onMessageChannelReady;

    const/4 v5, 0x4

    const-string v6, "NEVER"

    invoke-direct {v0, v6, v5, v5}, Lo/setUserProperties$validateRelationship$onMessageChannelReady;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setUserProperties$validateRelationship$onMessageChannelReady;->ICustomTabsCallback:Lo/setUserProperties$validateRelationship$onMessageChannelReady;

    const/4 v6, 0x5

    new-array v6, v6, [Lo/setUserProperties$validateRelationship$onMessageChannelReady;

    sget-object v7, Lo/setUserProperties$validateRelationship$onMessageChannelReady;->onNavigationEvent:Lo/setUserProperties$validateRelationship$onMessageChannelReady;

    aput-object v7, v6, v1

    sget-object v1, Lo/setUserProperties$validateRelationship$onMessageChannelReady;->extraCallback:Lo/setUserProperties$validateRelationship$onMessageChannelReady;

    aput-object v1, v6, v2

    sget-object v1, Lo/setUserProperties$validateRelationship$onMessageChannelReady;->onPostMessage:Lo/setUserProperties$validateRelationship$onMessageChannelReady;

    aput-object v1, v6, v3

    sget-object v1, Lo/setUserProperties$validateRelationship$onMessageChannelReady;->onMessageChannelReady:Lo/setUserProperties$validateRelationship$onMessageChannelReady;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lo/setUserProperties$validateRelationship$onMessageChannelReady;->ICustomTabsCallback$Stub:[Lo/setUserProperties$validateRelationship$onMessageChannelReady;

    new-instance v0, Lo/getUserIdTokenStatus;

    invoke-direct {v0}, Lo/getUserIdTokenStatus;-><init>()V

    sput-object v0, Lo/setUserProperties$validateRelationship$onMessageChannelReady;->asInterface:Lo/setHierarchy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lo/setUserProperties$validateRelationship$onMessageChannelReady;->asBinder:I

    return-void
.end method

.method public static ICustomTabsCallback()Lo/setHierarchy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/setHierarchy<",
            "Lo/setUserProperties$validateRelationship$onMessageChannelReady;",
            ">;"
        }
    .end annotation

    sget-object v0, Lo/setUserProperties$validateRelationship$onMessageChannelReady;->asInterface:Lo/setHierarchy;

    return-object v0
.end method

.method public static ICustomTabsCallback(I)Lo/setUserProperties$validateRelationship$onMessageChannelReady;
    .locals 1

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lo/setUserProperties$validateRelationship$onMessageChannelReady;->ICustomTabsCallback:Lo/setUserProperties$validateRelationship$onMessageChannelReady;

    return-object p0

    :cond_1
    sget-object p0, Lo/setUserProperties$validateRelationship$onMessageChannelReady;->onMessageChannelReady:Lo/setUserProperties$validateRelationship$onMessageChannelReady;

    return-object p0

    :cond_2
    sget-object p0, Lo/setUserProperties$validateRelationship$onMessageChannelReady;->onPostMessage:Lo/setUserProperties$validateRelationship$onMessageChannelReady;

    return-object p0

    :cond_3
    sget-object p0, Lo/setUserProperties$validateRelationship$onMessageChannelReady;->extraCallback:Lo/setUserProperties$validateRelationship$onMessageChannelReady;

    return-object p0

    :cond_4
    sget-object p0, Lo/setUserProperties$validateRelationship$onMessageChannelReady;->onNavigationEvent:Lo/setUserProperties$validateRelationship$onMessageChannelReady;

    return-object p0
.end method

.method public static values()[Lo/setUserProperties$validateRelationship$onMessageChannelReady;
    .locals 1

    sget-object v0, Lo/setUserProperties$validateRelationship$onMessageChannelReady;->ICustomTabsCallback$Stub:[Lo/setUserProperties$validateRelationship$onMessageChannelReady;

    invoke-virtual {v0}, [Lo/setUserProperties$validateRelationship$onMessageChannelReady;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/setUserProperties$validateRelationship$onMessageChannelReady;

    return-object v0
.end method


# virtual methods
.method public final onNavigationEvent()I
    .locals 1

    iget v0, p0, Lo/setUserProperties$validateRelationship$onMessageChannelReady;->asBinder:I

    return v0
.end method
