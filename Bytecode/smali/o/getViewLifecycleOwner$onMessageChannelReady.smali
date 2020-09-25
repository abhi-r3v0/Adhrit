.class public final enum Lo/getViewLifecycleOwner$onMessageChannelReady;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getViewLifecycleOwner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/getViewLifecycleOwner$onMessageChannelReady;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/getViewLifecycleOwner$onMessageChannelReady;

.field private static final synthetic ICustomTabsCallback$Stub:[Lo/getViewLifecycleOwner$onMessageChannelReady;

.field public static final enum asBinder:Lo/getViewLifecycleOwner$onMessageChannelReady;

.field public static final enum asInterface:Lo/getViewLifecycleOwner$onMessageChannelReady;

.field public static final enum extraCallback:Lo/getViewLifecycleOwner$onMessageChannelReady;

.field public static final enum onMessageChannelReady:Lo/getViewLifecycleOwner$onMessageChannelReady;

.field public static final enum onNavigationEvent:Lo/getViewLifecycleOwner$onMessageChannelReady;

.field public static final enum onPostMessage:Lo/getViewLifecycleOwner$onMessageChannelReady;

.field public static final enum onRelationshipValidationResult:Lo/getViewLifecycleOwner$onMessageChannelReady;

.field public static final enum onTransact:Lo/getViewLifecycleOwner$onMessageChannelReady;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 763
    new-instance v0, Lo/getViewLifecycleOwner$onMessageChannelReady;

    const/4 v1, 0x0

    const-string v2, "TOP_LEFT"

    invoke-direct {v0, v2, v1}, Lo/getViewLifecycleOwner$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/getViewLifecycleOwner$onMessageChannelReady;->extraCallback:Lo/getViewLifecycleOwner$onMessageChannelReady;

    .line 764
    new-instance v0, Lo/getViewLifecycleOwner$onMessageChannelReady;

    const/4 v2, 0x1

    const-string v3, "TOP_RIGHT"

    invoke-direct {v0, v3, v2}, Lo/getViewLifecycleOwner$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/getViewLifecycleOwner$onMessageChannelReady;->ICustomTabsCallback:Lo/getViewLifecycleOwner$onMessageChannelReady;

    .line 765
    new-instance v0, Lo/getViewLifecycleOwner$onMessageChannelReady;

    const/4 v3, 0x2

    const-string v4, "BOTTOM_LEFT"

    invoke-direct {v0, v4, v3}, Lo/getViewLifecycleOwner$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/getViewLifecycleOwner$onMessageChannelReady;->onPostMessage:Lo/getViewLifecycleOwner$onMessageChannelReady;

    .line 766
    new-instance v0, Lo/getViewLifecycleOwner$onMessageChannelReady;

    const/4 v4, 0x3

    const-string v5, "BOTTOM_RIGHT"

    invoke-direct {v0, v5, v4}, Lo/getViewLifecycleOwner$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/getViewLifecycleOwner$onMessageChannelReady;->onMessageChannelReady:Lo/getViewLifecycleOwner$onMessageChannelReady;

    .line 767
    new-instance v0, Lo/getViewLifecycleOwner$onMessageChannelReady;

    const/4 v5, 0x4

    const-string v6, "LEFT"

    invoke-direct {v0, v6, v5}, Lo/getViewLifecycleOwner$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/getViewLifecycleOwner$onMessageChannelReady;->onNavigationEvent:Lo/getViewLifecycleOwner$onMessageChannelReady;

    .line 768
    new-instance v0, Lo/getViewLifecycleOwner$onMessageChannelReady;

    const/4 v6, 0x5

    const-string v7, "TOP"

    invoke-direct {v0, v7, v6}, Lo/getViewLifecycleOwner$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/getViewLifecycleOwner$onMessageChannelReady;->onRelationshipValidationResult:Lo/getViewLifecycleOwner$onMessageChannelReady;

    .line 769
    new-instance v0, Lo/getViewLifecycleOwner$onMessageChannelReady;

    const/4 v7, 0x6

    const-string v8, "RIGHT"

    invoke-direct {v0, v8, v7}, Lo/getViewLifecycleOwner$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/getViewLifecycleOwner$onMessageChannelReady;->asBinder:Lo/getViewLifecycleOwner$onMessageChannelReady;

    .line 770
    new-instance v0, Lo/getViewLifecycleOwner$onMessageChannelReady;

    const/4 v8, 0x7

    const-string v9, "BOTTOM"

    invoke-direct {v0, v9, v8}, Lo/getViewLifecycleOwner$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/getViewLifecycleOwner$onMessageChannelReady;->onTransact:Lo/getViewLifecycleOwner$onMessageChannelReady;

    .line 771
    new-instance v0, Lo/getViewLifecycleOwner$onMessageChannelReady;

    const/16 v9, 0x8

    const-string v10, "CENTER"

    invoke-direct {v0, v10, v9}, Lo/getViewLifecycleOwner$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/getViewLifecycleOwner$onMessageChannelReady;->asInterface:Lo/getViewLifecycleOwner$onMessageChannelReady;

    const/16 v10, 0x9

    new-array v10, v10, [Lo/getViewLifecycleOwner$onMessageChannelReady;

    .line 762
    sget-object v11, Lo/getViewLifecycleOwner$onMessageChannelReady;->extraCallback:Lo/getViewLifecycleOwner$onMessageChannelReady;

    aput-object v11, v10, v1

    sget-object v1, Lo/getViewLifecycleOwner$onMessageChannelReady;->ICustomTabsCallback:Lo/getViewLifecycleOwner$onMessageChannelReady;

    aput-object v1, v10, v2

    sget-object v1, Lo/getViewLifecycleOwner$onMessageChannelReady;->onPostMessage:Lo/getViewLifecycleOwner$onMessageChannelReady;

    aput-object v1, v10, v3

    sget-object v1, Lo/getViewLifecycleOwner$onMessageChannelReady;->onMessageChannelReady:Lo/getViewLifecycleOwner$onMessageChannelReady;

    aput-object v1, v10, v4

    sget-object v1, Lo/getViewLifecycleOwner$onMessageChannelReady;->onNavigationEvent:Lo/getViewLifecycleOwner$onMessageChannelReady;

    aput-object v1, v10, v5

    sget-object v1, Lo/getViewLifecycleOwner$onMessageChannelReady;->onRelationshipValidationResult:Lo/getViewLifecycleOwner$onMessageChannelReady;

    aput-object v1, v10, v6

    sget-object v1, Lo/getViewLifecycleOwner$onMessageChannelReady;->asBinder:Lo/getViewLifecycleOwner$onMessageChannelReady;

    aput-object v1, v10, v7

    sget-object v1, Lo/getViewLifecycleOwner$onMessageChannelReady;->onTransact:Lo/getViewLifecycleOwner$onMessageChannelReady;

    aput-object v1, v10, v8

    aput-object v0, v10, v9

    sput-object v10, Lo/getViewLifecycleOwner$onMessageChannelReady;->ICustomTabsCallback$Stub:[Lo/getViewLifecycleOwner$onMessageChannelReady;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 762
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/getViewLifecycleOwner$onMessageChannelReady;
    .locals 1

    .line 762
    const-class v0, Lo/getViewLifecycleOwner$onMessageChannelReady;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/getViewLifecycleOwner$onMessageChannelReady;

    return-object p0
.end method

.method public static values()[Lo/getViewLifecycleOwner$onMessageChannelReady;
    .locals 1

    .line 762
    sget-object v0, Lo/getViewLifecycleOwner$onMessageChannelReady;->ICustomTabsCallback$Stub:[Lo/getViewLifecycleOwner$onMessageChannelReady;

    invoke-virtual {v0}, [Lo/getViewLifecycleOwner$onMessageChannelReady;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/getViewLifecycleOwner$onMessageChannelReady;

    return-object v0
.end method
