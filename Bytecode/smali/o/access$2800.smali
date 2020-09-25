.class public abstract Lo/access$2800;
.super Lo/abortTransactionsAtNode;
.source ""

# interfaces
.implements Lo/applyUserOverwrite;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lo/abortTransactionsAtNode;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic ICustomTabsCallback$Stub()Lo/hasCompleteView;
    .locals 1

    .line 1025
    invoke-super {p0}, Lo/abortTransactionsAtNode;->ICustomTabsCallback$Stub()Lo/hasCompleteView;

    move-result-object v0

    check-cast v0, Lo/applyUserOverwrite;

    return-object v0
.end method

.method protected final asInterface()Lo/applyUserOverwrite;
    .locals 1

    .line 25
    invoke-super {p0}, Lo/abortTransactionsAtNode;->ICustomTabsCallback$Stub()Lo/hasCompleteView;

    move-result-object v0

    check-cast v0, Lo/applyUserOverwrite;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 43
    :cond_0
    instance-of v1, p1, Lo/access$2800;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 44
    check-cast p1, Lo/access$2800;

    .line 45
    invoke-virtual {p0}, Lo/abortTransactionsAtNode;->onNavigationEvent()Lo/getQueryViews;

    move-result-object v1

    invoke-virtual {p1}, Lo/abortTransactionsAtNode;->onNavigationEvent()Lo/getQueryViews;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lo/abortTransactionsAtNode;->extraCallback()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lo/abortTransactionsAtNode;->extraCallback()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lo/abortTransactionsAtNode;->h_()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lo/abortTransactionsAtNode;->h_()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lo/abortTransactionsAtNode;->onPostMessage()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lo/abortTransactionsAtNode;->onPostMessage()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2

    .line 50
    :cond_2
    instance-of v0, p1, Lo/applyUserOverwrite;

    if-eqz v0, :cond_3

    .line 51
    invoke-virtual {p0}, Lo/abortTransactionsAtNode;->onRelationshipValidationResult()Lo/hasCompleteView;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    return v2
.end method

.method public hashCode()I
    .locals 2

    .line 58
    invoke-virtual {p0}, Lo/abortTransactionsAtNode;->onNavigationEvent()Lo/getQueryViews;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

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

    .line 63
    invoke-virtual {p0}, Lo/abortTransactionsAtNode;->onRelationshipValidationResult()Lo/hasCompleteView;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 65
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 68
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "property "

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
