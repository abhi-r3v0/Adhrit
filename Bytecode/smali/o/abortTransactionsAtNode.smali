.class public abstract Lo/abortTransactionsAtNode;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/hasCompleteView;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/abortTransactionsAtNode$onPostMessage;
    }
.end annotation


# static fields
.field private static onNavigationEvent:Ljava/lang/Object;


# instance fields
.field public final ICustomTabsCallback:Ljava/lang/Object;

.field private transient onMessageChannelReady:Lo/hasCompleteView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    invoke-static {}, Lo/abortTransactionsAtNode$onPostMessage;->onMessageChannelReady()Lo/abortTransactionsAtNode$onPostMessage;

    move-result-object v0

    sput-object v0, Lo/abortTransactionsAtNode;->onNavigationEvent:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 48
    sget-object v0, Lo/abortTransactionsAtNode;->onNavigationEvent:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lo/abortTransactionsAtNode;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lo/abortTransactionsAtNode;->ICustomTabsCallback:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final varargs ICustomTabsCallback([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 138
    invoke-virtual {p0}, Lo/abortTransactionsAtNode;->ICustomTabsCallback$Stub()Lo/hasCompleteView;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/hasCompleteView;->ICustomTabsCallback([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected abstract ICustomTabsCallback()Lo/hasCompleteView;
.end method

.method protected ICustomTabsCallback$Stub()Lo/hasCompleteView;
    .locals 1

    .line 1065
    iget-object v0, p0, Lo/abortTransactionsAtNode;->onMessageChannelReady:Lo/hasCompleteView;

    if-nez v0, :cond_0

    .line 1067
    invoke-virtual {p0}, Lo/abortTransactionsAtNode;->ICustomTabsCallback()Lo/hasCompleteView;

    move-result-object v0

    .line 1068
    iput-object v0, p0, Lo/abortTransactionsAtNode;->onMessageChannelReady:Lo/hasCompleteView;

    :cond_0
    if-eq v0, p0, :cond_1

    return-object v0

    .line 77
    :cond_1
    new-instance v0, Lo/hasListeners;

    invoke-direct {v0}, Lo/hasListeners;-><init>()V

    throw v0
.end method

.method public extraCallback()Ljava/lang/String;
    .locals 1

    .line 97
    new-instance v0, Ljava/lang/AbstractMethodError;

    invoke-direct {v0}, Ljava/lang/AbstractMethodError;-><init>()V

    throw v0
.end method

.method public h_()Ljava/lang/String;
    .locals 1

    .line 109
    new-instance v0, Ljava/lang/AbstractMethodError;

    invoke-direct {v0}, Ljava/lang/AbstractMethodError;-><init>()V

    throw v0
.end method

.method public onNavigationEvent()Lo/getQueryViews;
    .locals 1

    .line 89
    new-instance v0, Ljava/lang/AbstractMethodError;

    invoke-direct {v0}, Ljava/lang/AbstractMethodError;-><init>()V

    throw v0
.end method

.method public final onPostMessage()Ljava/lang/Object;
    .locals 1

    .line 60
    iget-object v0, p0, Lo/abortTransactionsAtNode;->ICustomTabsCallback:Ljava/lang/Object;

    return-object v0
.end method

.method public final onRelationshipValidationResult()Lo/hasCompleteView;
    .locals 1

    .line 65
    iget-object v0, p0, Lo/abortTransactionsAtNode;->onMessageChannelReady:Lo/hasCompleteView;

    if-nez v0, :cond_0

    .line 67
    invoke-virtual {p0}, Lo/abortTransactionsAtNode;->ICustomTabsCallback()Lo/hasCompleteView;

    move-result-object v0

    .line 68
    iput-object v0, p0, Lo/abortTransactionsAtNode;->onMessageChannelReady:Lo/hasCompleteView;

    :cond_0
    return-object v0
.end method
