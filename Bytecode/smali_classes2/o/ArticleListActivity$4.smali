.class public final enum Lo/ArticleListActivity$4;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements Lo/fV;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/ArticleListActivity$4;",
        ">;",
        "Lo/fV;"
    }
.end annotation


# static fields
.field private static final ICustomTabsCallback:Lo/onItemLongClick;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/onItemLongClick<",
            "Lo/ArticleListActivity$4;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum extraCallback:Lo/ArticleListActivity$4;

.field public static final enum onMessageChannelReady:Lo/ArticleListActivity$4;

.field private static final synthetic onNavigationEvent:[Lo/ArticleListActivity$4;


# instance fields
.field private final onPostMessage:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 19
    new-instance v0, Lo/ArticleListActivity$4;

    const/4 v1, 0x0

    const-string v2, "SESSION_VERBOSITY_NONE"

    invoke-direct {v0, v2, v1, v1}, Lo/ArticleListActivity$4;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/ArticleListActivity$4;->onMessageChannelReady:Lo/ArticleListActivity$4;

    .line 20
    new-instance v0, Lo/ArticleListActivity$4;

    const/4 v2, 0x1

    const-string v3, "GAUGES_AND_SYSTEM_EVENTS"

    invoke-direct {v0, v3, v2, v2}, Lo/ArticleListActivity$4;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/ArticleListActivity$4;->extraCallback:Lo/ArticleListActivity$4;

    const/4 v3, 0x2

    new-array v3, v3, [Lo/ArticleListActivity$4;

    .line 21
    sget-object v4, Lo/ArticleListActivity$4;->onMessageChannelReady:Lo/ArticleListActivity$4;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lo/ArticleListActivity$4;->onNavigationEvent:[Lo/ArticleListActivity$4;

    .line 22
    new-instance v0, Lo/ArticleListActivity$5;

    invoke-direct {v0}, Lo/ArticleListActivity$5;-><init>()V

    sput-object v0, Lo/ArticleListActivity$4;->ICustomTabsCallback:Lo/onItemLongClick;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput p3, p0, Lo/ArticleListActivity$4;->onPostMessage:I

    return-void
.end method

.method public static ICustomTabsCallback()Lo/ConversationDetailActivity$11;
    .locals 1

    .line 7
    sget-object v0, Lo/CategoryListActivity$1;->extraCallback:Lo/ConversationDetailActivity$11;

    return-object v0
.end method

.method public static onMessageChannelReady(I)Lo/ArticleListActivity$4;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 5
    :cond_0
    sget-object p0, Lo/ArticleListActivity$4;->extraCallback:Lo/ArticleListActivity$4;

    return-object p0

    .line 4
    :cond_1
    sget-object p0, Lo/ArticleListActivity$4;->onMessageChannelReady:Lo/ArticleListActivity$4;

    return-object p0
.end method

.method public static values()[Lo/ArticleListActivity$4;
    .locals 1

    .line 1
    sget-object v0, Lo/ArticleListActivity$4;->onNavigationEvent:[Lo/ArticleListActivity$4;

    invoke-virtual {v0}, [Lo/ArticleListActivity$4;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/ArticleListActivity$4;

    return-object v0
.end method


# virtual methods
.method public final onMessageChannelReady()I
    .locals 1

    .line 2
    iget v0, p0, Lo/ArticleListActivity$4;->onPostMessage:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " number="

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/ArticleListActivity$4;->onMessageChannelReady()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name="

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {p0}, Lo/ArticleListActivity$4;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
