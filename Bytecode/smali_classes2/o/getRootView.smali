.class public final enum Lo/getRootView;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/getRootView;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/getRootView;

.field public static final enum ICustomTabsCallback$Stub:Lo/getRootView;

.field private static final synthetic asBinder:[Lo/getRootView;

.field public static final enum extraCallback:Lo/getRootView;

.field public static final enum onMessageChannelReady:Lo/getRootView;

.field public static final enum onNavigationEvent:Lo/getRootView;

.field public static final enum onPostMessage:Lo/getRootView;


# instance fields
.field private onRelationshipValidationResult:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 6
    new-instance v0, Lo/getRootView;

    const/4 v1, 0x0

    const-string v2, "APP_START_TRACE_NAME"

    const-string v3, "_as"

    invoke-direct {v0, v2, v1, v3}, Lo/getRootView;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lo/getRootView;->onNavigationEvent:Lo/getRootView;

    .line 7
    new-instance v0, Lo/getRootView;

    const/4 v2, 0x1

    const-string v3, "ON_CREATE_TRACE_NAME"

    const-string v4, "_astui"

    invoke-direct {v0, v3, v2, v4}, Lo/getRootView;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lo/getRootView;->onPostMessage:Lo/getRootView;

    .line 8
    new-instance v0, Lo/getRootView;

    const/4 v3, 0x2

    const-string v4, "ON_START_TRACE_NAME"

    const-string v5, "_astfd"

    invoke-direct {v0, v4, v3, v5}, Lo/getRootView;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lo/getRootView;->ICustomTabsCallback:Lo/getRootView;

    .line 9
    new-instance v0, Lo/getRootView;

    const/4 v4, 0x3

    const-string v5, "ON_RESUME_TRACE_NAME"

    const-string v6, "_asti"

    invoke-direct {v0, v5, v4, v6}, Lo/getRootView;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lo/getRootView;->extraCallback:Lo/getRootView;

    .line 10
    new-instance v0, Lo/getRootView;

    const/4 v5, 0x4

    const-string v6, "FOREGROUND_TRACE_NAME"

    const-string v7, "_fs"

    invoke-direct {v0, v6, v5, v7}, Lo/getRootView;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lo/getRootView;->onMessageChannelReady:Lo/getRootView;

    .line 11
    new-instance v0, Lo/getRootView;

    const/4 v6, 0x5

    const-string v7, "BACKGROUND_TRACE_NAME"

    const-string v8, "_bs"

    invoke-direct {v0, v7, v6, v8}, Lo/getRootView;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lo/getRootView;->ICustomTabsCallback$Stub:Lo/getRootView;

    const/4 v7, 0x6

    new-array v7, v7, [Lo/getRootView;

    .line 12
    sget-object v8, Lo/getRootView;->onNavigationEvent:Lo/getRootView;

    aput-object v8, v7, v1

    sget-object v1, Lo/getRootView;->onPostMessage:Lo/getRootView;

    aput-object v1, v7, v2

    sget-object v1, Lo/getRootView;->ICustomTabsCallback:Lo/getRootView;

    aput-object v1, v7, v3

    sget-object v1, Lo/getRootView;->extraCallback:Lo/getRootView;

    aput-object v1, v7, v4

    sget-object v1, Lo/getRootView;->onMessageChannelReady:Lo/getRootView;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lo/getRootView;->asBinder:[Lo/getRootView;

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

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3
    iput-object p3, p0, Lo/getRootView;->onRelationshipValidationResult:Ljava/lang/String;

    return-void
.end method

.method public static values()[Lo/getRootView;
    .locals 1

    .line 1
    sget-object v0, Lo/getRootView;->asBinder:[Lo/getRootView;

    invoke-virtual {v0}, [Lo/getRootView;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/getRootView;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lo/getRootView;->onRelationshipValidationResult:Ljava/lang/String;

    return-object v0
.end method
