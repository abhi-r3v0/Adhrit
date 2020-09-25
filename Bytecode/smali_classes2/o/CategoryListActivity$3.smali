.class public final enum Lo/CategoryListActivity$3;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements Lo/fV;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/CategoryListActivity$3;",
        ">;",
        "Lo/fV;"
    }
.end annotation


# static fields
.field private static final enum ICustomTabsCallback:Lo/CategoryListActivity$3;

.field private static final synthetic ICustomTabsCallback$Stub:[Lo/CategoryListActivity$3;

.field private static final enum extraCallback:Lo/CategoryListActivity$3;

.field private static final enum onMessageChannelReady:Lo/CategoryListActivity$3;

.field private static final enum onNavigationEvent:Lo/CategoryListActivity$3;

.field private static final enum onPostMessage:Lo/CategoryListActivity$3;

.field private static final onRelationshipValidationResult:Lo/onItemLongClick;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/onItemLongClick<",
            "Lo/CategoryListActivity$3;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final asInterface:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 15
    new-instance v0, Lo/CategoryListActivity$3;

    const/4 v1, 0x0

    const-string v2, "VISIBILITY_STATE_UNKNOWN"

    invoke-direct {v0, v2, v1, v1}, Lo/CategoryListActivity$3;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/CategoryListActivity$3;->onMessageChannelReady:Lo/CategoryListActivity$3;

    .line 16
    new-instance v0, Lo/CategoryListActivity$3;

    const/4 v2, 0x1

    const-string v3, "VISIBLE"

    invoke-direct {v0, v3, v2, v2}, Lo/CategoryListActivity$3;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/CategoryListActivity$3;->onNavigationEvent:Lo/CategoryListActivity$3;

    .line 17
    new-instance v0, Lo/CategoryListActivity$3;

    const/4 v3, 0x2

    const-string v4, "HIDDEN"

    invoke-direct {v0, v4, v3, v3}, Lo/CategoryListActivity$3;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/CategoryListActivity$3;->onPostMessage:Lo/CategoryListActivity$3;

    .line 18
    new-instance v0, Lo/CategoryListActivity$3;

    const/4 v4, 0x3

    const-string v5, "PRERENDER"

    invoke-direct {v0, v5, v4, v4}, Lo/CategoryListActivity$3;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/CategoryListActivity$3;->extraCallback:Lo/CategoryListActivity$3;

    .line 19
    new-instance v0, Lo/CategoryListActivity$3;

    const/4 v5, 0x4

    const-string v6, "UNLOADED"

    invoke-direct {v0, v6, v5, v5}, Lo/CategoryListActivity$3;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/CategoryListActivity$3;->ICustomTabsCallback:Lo/CategoryListActivity$3;

    const/4 v6, 0x5

    new-array v6, v6, [Lo/CategoryListActivity$3;

    .line 20
    sget-object v7, Lo/CategoryListActivity$3;->onMessageChannelReady:Lo/CategoryListActivity$3;

    aput-object v7, v6, v1

    sget-object v1, Lo/CategoryListActivity$3;->onNavigationEvent:Lo/CategoryListActivity$3;

    aput-object v1, v6, v2

    sget-object v1, Lo/CategoryListActivity$3;->onPostMessage:Lo/CategoryListActivity$3;

    aput-object v1, v6, v3

    sget-object v1, Lo/CategoryListActivity$3;->extraCallback:Lo/CategoryListActivity$3;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lo/CategoryListActivity$3;->ICustomTabsCallback$Stub:[Lo/CategoryListActivity$3;

    .line 21
    new-instance v0, Lo/G;

    invoke-direct {v0}, Lo/G;-><init>()V

    sput-object v0, Lo/CategoryListActivity$3;->onRelationshipValidationResult:Lo/onItemLongClick;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput p3, p0, Lo/CategoryListActivity$3;->asInterface:I

    return-void
.end method

.method public static onPostMessage()Lo/ConversationDetailActivity$11;
    .locals 1

    .line 3
    sget-object v0, Lo/gd;->onMessageChannelReady:Lo/ConversationDetailActivity$11;

    return-object v0
.end method

.method public static values()[Lo/CategoryListActivity$3;
    .locals 1

    .line 1
    sget-object v0, Lo/CategoryListActivity$3;->ICustomTabsCallback$Stub:[Lo/CategoryListActivity$3;

    invoke-virtual {v0}, [Lo/CategoryListActivity$3;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/CategoryListActivity$3;

    return-object v0
.end method


# virtual methods
.method public final onMessageChannelReady()I
    .locals 1

    .line 2
    iget v0, p0, Lo/CategoryListActivity$3;->asInterface:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " number="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/CategoryListActivity$3;->onMessageChannelReady()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name="

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {p0}, Lo/CategoryListActivity$3;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
