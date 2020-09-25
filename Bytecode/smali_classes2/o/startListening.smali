.class public Lo/startListening;
.super Lo/abortTransactionsAtNode;
.source ""

# interfaces
.implements Lo/visitTree;
.implements Lo/getCompleteServerCache;


# instance fields
.field private final onNavigationEvent:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lo/abortTransactionsAtNode;-><init>()V

    .line 16
    iput p1, p0, Lo/startListening;->onNavigationEvent:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 21
    invoke-direct {p0, p2}, Lo/abortTransactionsAtNode;-><init>(Ljava/lang/Object;)V

    .line 22
    iput p1, p0, Lo/startListening;->onNavigationEvent:I

    return-void
.end method


# virtual methods
.method protected final ICustomTabsCallback()Lo/hasCompleteView;
    .locals 1

    .line 39
    invoke-static {p0}, Lo/applyEmulatorSettings;->ICustomTabsCallback(Lo/startListening;)Lo/getCompleteServerCache;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic ICustomTabsCallback$Stub()Lo/hasCompleteView;
    .locals 1

    .line 1033
    invoke-super {p0}, Lo/abortTransactionsAtNode;->ICustomTabsCallback$Stub()Lo/hasCompleteView;

    move-result-object v0

    check-cast v0, Lo/getCompleteServerCache;

    return-object v0
.end method

.method public final asBinder()I
    .locals 1

    .line 27
    iget v0, p0, Lo/startListening;->onNavigationEvent:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 75
    :cond_0
    instance-of v1, p1, Lo/startListening;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 76
    check-cast p1, Lo/startListening;

    .line 78
    invoke-virtual {p0}, Lo/abortTransactionsAtNode;->onNavigationEvent()Lo/getQueryViews;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lo/abortTransactionsAtNode;->onNavigationEvent()Lo/getQueryViews;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lo/abortTransactionsAtNode;->onNavigationEvent()Lo/getQueryViews;

    move-result-object v1

    invoke-virtual {p1}, Lo/abortTransactionsAtNode;->onNavigationEvent()Lo/getQueryViews;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_0
    invoke-virtual {p0}, Lo/abortTransactionsAtNode;->extraCallback()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lo/abortTransactionsAtNode;->extraCallback()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lo/abortTransactionsAtNode;->h_()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lo/abortTransactionsAtNode;->h_()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lo/abortTransactionsAtNode;->onPostMessage()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lo/abortTransactionsAtNode;->onPostMessage()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2

    .line 83
    :cond_3
    instance-of v0, p1, Lo/getCompleteServerCache;

    if-eqz v0, :cond_4

    .line 84
    invoke-virtual {p0}, Lo/abortTransactionsAtNode;->onRelationshipValidationResult()Lo/hasCompleteView;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    return v2
.end method

.method public hashCode()I
    .locals 2

    .line 91
    invoke-virtual {p0}, Lo/abortTransactionsAtNode;->onNavigationEvent()Lo/getQueryViews;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lo/abortTransactionsAtNode;->onNavigationEvent()Lo/getQueryViews;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    :goto_0
    invoke-virtual {p0}, Lo/abortTransactionsAtNode;->extraCallback()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lo/abortTransactionsAtNode;->h_()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 96
    invoke-virtual {p0}, Lo/abortTransactionsAtNode;->onRelationshipValidationResult()Lo/hasCompleteView;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 98
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 102
    :cond_0
    invoke-virtual {p0}, Lo/abortTransactionsAtNode;->extraCallback()Ljava/lang/String;

    move-result-object v0

    const-string v1, "<init>"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "constructor (Kotlin reflection is not available)"

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "function "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo/abortTransactionsAtNode;->extraCallback()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (Kotlin reflection is not available)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
