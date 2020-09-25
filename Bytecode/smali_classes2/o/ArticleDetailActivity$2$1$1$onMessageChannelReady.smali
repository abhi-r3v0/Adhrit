.class public final enum Lo/ArticleDetailActivity$2$1$1$onMessageChannelReady;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements Lo/fV;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ArticleDetailActivity$2$1$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/ArticleDetailActivity$2$1$1$onMessageChannelReady;",
        ">;",
        "Lo/fV;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/ArticleDetailActivity$2$1$1$onMessageChannelReady;

.field private static final extraCallback:Lo/onItemLongClick;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/onItemLongClick<",
            "Lo/ArticleDetailActivity$2$1$1$onMessageChannelReady;",
            ">;"
        }
    .end annotation
.end field

.field private static final enum onMessageChannelReady:Lo/ArticleDetailActivity$2$1$1$onMessageChannelReady;

.field private static final synthetic onPostMessage:[Lo/ArticleDetailActivity$2$1$1$onMessageChannelReady;


# instance fields
.field private final onNavigationEvent:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 15
    new-instance v0, Lo/ArticleDetailActivity$2$1$1$onMessageChannelReady;

    const/4 v1, 0x0

    const-string v2, "NETWORK_CLIENT_ERROR_REASON_UNKNOWN"

    invoke-direct {v0, v2, v1, v1}, Lo/ArticleDetailActivity$2$1$1$onMessageChannelReady;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/ArticleDetailActivity$2$1$1$onMessageChannelReady;->onMessageChannelReady:Lo/ArticleDetailActivity$2$1$1$onMessageChannelReady;

    .line 16
    new-instance v0, Lo/ArticleDetailActivity$2$1$1$onMessageChannelReady;

    const/4 v2, 0x1

    const-string v3, "GENERIC_CLIENT_ERROR"

    invoke-direct {v0, v3, v2, v2}, Lo/ArticleDetailActivity$2$1$1$onMessageChannelReady;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/ArticleDetailActivity$2$1$1$onMessageChannelReady;->ICustomTabsCallback:Lo/ArticleDetailActivity$2$1$1$onMessageChannelReady;

    const/4 v3, 0x2

    new-array v3, v3, [Lo/ArticleDetailActivity$2$1$1$onMessageChannelReady;

    .line 17
    sget-object v4, Lo/ArticleDetailActivity$2$1$1$onMessageChannelReady;->onMessageChannelReady:Lo/ArticleDetailActivity$2$1$1$onMessageChannelReady;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lo/ArticleDetailActivity$2$1$1$onMessageChannelReady;->onPostMessage:[Lo/ArticleDetailActivity$2$1$1$onMessageChannelReady;

    .line 18
    new-instance v0, Lo/ArticleDetailActivity$4;

    invoke-direct {v0}, Lo/ArticleDetailActivity$4;-><init>()V

    sput-object v0, Lo/ArticleDetailActivity$2$1$1$onMessageChannelReady;->extraCallback:Lo/onItemLongClick;

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
    iput p3, p0, Lo/ArticleDetailActivity$2$1$1$onMessageChannelReady;->onNavigationEvent:I

    return-void
.end method

.method public static onNavigationEvent()Lo/ConversationDetailActivity$11;
    .locals 1

    .line 3
    sget-object v0, Lo/getEmptyView;->extraCallback:Lo/ConversationDetailActivity$11;

    return-object v0
.end method

.method public static values()[Lo/ArticleDetailActivity$2$1$1$onMessageChannelReady;
    .locals 1

    .line 1
    sget-object v0, Lo/ArticleDetailActivity$2$1$1$onMessageChannelReady;->onPostMessage:[Lo/ArticleDetailActivity$2$1$1$onMessageChannelReady;

    invoke-virtual {v0}, [Lo/ArticleDetailActivity$2$1$1$onMessageChannelReady;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/ArticleDetailActivity$2$1$1$onMessageChannelReady;

    return-object v0
.end method


# virtual methods
.method public final onMessageChannelReady()I
    .locals 1

    .line 2
    iget v0, p0, Lo/ArticleDetailActivity$2$1$1$onMessageChannelReady;->onNavigationEvent:I

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

    invoke-virtual {p0}, Lo/ArticleDetailActivity$2$1$1$onMessageChannelReady;->onMessageChannelReady()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name="

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {p0}, Lo/ArticleDetailActivity$2$1$1$onMessageChannelReady;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
