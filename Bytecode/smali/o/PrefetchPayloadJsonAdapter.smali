.class final Lo/PrefetchPayloadJsonAdapter;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final ICustomTabsCallback:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Lo/CheckoutContainerFragment$addFragment$$inlined$executeOnResume$1;",
            ">;"
        }
    .end annotation
.end field

.field private extraCallback:Lo/CredPaymentUiBuilder_PollingStrategyJsonAdapter;

.field public final onMessageChannelReady:I

.field public final onNavigationEvent:Ljava/lang/String;

.field private onPostMessage:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 47
    sget-object v0, Lo/CredPaymentUiBuilder_PollingStrategyJsonAdapter;->extraCallback:Lo/CredPaymentUiBuilder_PollingStrategyJsonAdapter;

    invoke-direct {p0, p1, p2, v0}, Lo/PrefetchPayloadJsonAdapter;-><init>(ILjava/lang/String;Lo/CredPaymentUiBuilder_PollingStrategyJsonAdapter;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lo/CredPaymentUiBuilder_PollingStrategyJsonAdapter;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p1, p0, Lo/PrefetchPayloadJsonAdapter;->onMessageChannelReady:I

    .line 52
    iput-object p2, p0, Lo/PrefetchPayloadJsonAdapter;->onNavigationEvent:Ljava/lang/String;

    .line 53
    iput-object p3, p0, Lo/PrefetchPayloadJsonAdapter;->extraCallback:Lo/CredPaymentUiBuilder_PollingStrategyJsonAdapter;

    .line 54
    new-instance p1, Ljava/util/TreeSet;

    invoke-direct {p1}, Ljava/util/TreeSet;-><init>()V

    iput-object p1, p0, Lo/PrefetchPayloadJsonAdapter;->ICustomTabsCallback:Ljava/util/TreeSet;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Ljava/util/TreeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeSet<",
            "Lo/CheckoutContainerFragment$addFragment$$inlined$executeOnResume$1;",
            ">;"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lo/PrefetchPayloadJsonAdapter;->ICustomTabsCallback:Ljava/util/TreeSet;

    return-object v0
.end method

.method public final ICustomTabsCallback(J)Lo/CheckoutContainerFragment$addFragment$$inlined$executeOnResume$1;
    .locals 6

    .line 98
    iget-object v0, p0, Lo/PrefetchPayloadJsonAdapter;->onNavigationEvent:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lo/CheckoutContainerFragment$addFragment$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;J)Lo/CheckoutContainerFragment$addFragment$$inlined$executeOnResume$1;

    move-result-object v0

    .line 99
    iget-object v1, p0, Lo/PrefetchPayloadJsonAdapter;->ICustomTabsCallback:Ljava/util/TreeSet;

    invoke-virtual {v1, v0}, Ljava/util/TreeSet;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/CheckoutContainerFragment$addFragment$$inlined$executeOnResume$1;

    if-eqz v1, :cond_0

    .line 100
    iget-wide v2, v1, Lo/JustPaySafePayloadJsonAdapter;->extraCallback:J

    iget-wide v4, v1, Lo/JustPaySafePayloadJsonAdapter;->onNavigationEvent:J

    add-long/2addr v2, v4

    cmp-long v4, v2, p1

    if-lez v4, :cond_0

    return-object v1

    .line 103
    :cond_0
    iget-object v1, p0, Lo/PrefetchPayloadJsonAdapter;->ICustomTabsCallback:Ljava/util/TreeSet;

    invoke-virtual {v1, v0}, Ljava/util/TreeSet;->ceiling(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/CheckoutContainerFragment$addFragment$$inlined$executeOnResume$1;

    if-nez v0, :cond_1

    .line 104
    iget-object v0, p0, Lo/PrefetchPayloadJsonAdapter;->onNavigationEvent:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lo/CheckoutContainerFragment$addFragment$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;J)Lo/CheckoutContainerFragment$addFragment$$inlined$executeOnResume$1;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v1, p0, Lo/PrefetchPayloadJsonAdapter;->onNavigationEvent:Ljava/lang/String;

    iget-wide v2, v0, Lo/JustPaySafePayloadJsonAdapter;->extraCallback:J

    sub-long/2addr v2, p1

    .line 105
    invoke-static {v1, p1, p2, v2, v3}, Lo/CheckoutContainerFragment$addFragment$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/String;JJ)Lo/CheckoutContainerFragment$addFragment$$inlined$executeOnResume$1;

    move-result-object p1

    return-object p1
.end method

.method public final ICustomTabsCallback(Lo/CheckoutContainerFragment$addFragment$$inlined$executeOnResume$1;JZ)Lo/CheckoutContainerFragment$addFragment$$inlined$executeOnResume$1;
    .locals 7

    .line 154
    iget-object v0, p0, Lo/PrefetchPayloadJsonAdapter;->ICustomTabsCallback:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    .line 155
    iget-object v0, p1, Lo/JustPaySafePayloadJsonAdapter;->onPostMessage:Ljava/io/File;

    if-eqz p4, :cond_1

    .line 157
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 158
    iget-wide v3, p1, Lo/JustPaySafePayloadJsonAdapter;->extraCallback:J

    .line 159
    iget v2, p0, Lo/PrefetchPayloadJsonAdapter;->onMessageChannelReady:I

    move-wide v5, p2

    invoke-static/range {v1 .. v6}, Lo/CheckoutContainerFragment$addFragment$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/io/File;IJJ)Ljava/io/File;

    move-result-object p4

    .line 160
    invoke-virtual {v0, p4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p4

    goto :goto_0

    .line 163
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to rename "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v1, "CachedContent"

    invoke-static {v1, p4}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :cond_1
    :goto_0
    invoke-virtual {p1, v0, p2, p3}, Lo/CheckoutContainerFragment$addFragment$$inlined$executeOnResume$1;->onPostMessage(Ljava/io/File;J)Lo/CheckoutContainerFragment$addFragment$$inlined$executeOnResume$1;

    move-result-object p1

    .line 168
    iget-object p2, p0, Lo/PrefetchPayloadJsonAdapter;->ICustomTabsCallback:Ljava/util/TreeSet;

    invoke-virtual {p2, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 199
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 202
    :cond_1
    check-cast p1, Lo/PrefetchPayloadJsonAdapter;

    .line 203
    iget v2, p0, Lo/PrefetchPayloadJsonAdapter;->onMessageChannelReady:I

    iget v3, p1, Lo/PrefetchPayloadJsonAdapter;->onMessageChannelReady:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lo/PrefetchPayloadJsonAdapter;->onNavigationEvent:Ljava/lang/String;

    iget-object v3, p1, Lo/PrefetchPayloadJsonAdapter;->onNavigationEvent:Ljava/lang/String;

    .line 204
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lo/PrefetchPayloadJsonAdapter;->ICustomTabsCallback:Ljava/util/TreeSet;

    iget-object v3, p1, Lo/PrefetchPayloadJsonAdapter;->ICustomTabsCallback:Ljava/util/TreeSet;

    .line 205
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lo/PrefetchPayloadJsonAdapter;->extraCallback:Lo/CredPaymentUiBuilder_PollingStrategyJsonAdapter;

    iget-object p1, p1, Lo/PrefetchPayloadJsonAdapter;->extraCallback:Lo/CredPaymentUiBuilder_PollingStrategyJsonAdapter;

    .line 206
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 188
    iget v0, p0, Lo/PrefetchPayloadJsonAdapter;->onMessageChannelReady:I

    mul-int/lit8 v0, v0, 0x1f

    .line 189
    iget-object v1, p0, Lo/PrefetchPayloadJsonAdapter;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 190
    iget-object v1, p0, Lo/PrefetchPayloadJsonAdapter;->extraCallback:Lo/CredPaymentUiBuilder_PollingStrategyJsonAdapter;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final onMessageChannelReady(Lo/CheckoutContainerFragment$addFragment$$inlined$executeOnResume$1;)V
    .locals 1

    .line 85
    iget-object v0, p0, Lo/PrefetchPayloadJsonAdapter;->ICustomTabsCallback:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onMessageChannelReady(Z)V
    .locals 0

    .line 80
    iput-boolean p1, p0, Lo/PrefetchPayloadJsonAdapter;->onPostMessage:Z

    return-void
.end method

.method public final onMessageChannelReady()Z
    .locals 1

    .line 174
    iget-object v0, p0, Lo/PrefetchPayloadJsonAdapter;->ICustomTabsCallback:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final onNavigationEvent()Z
    .locals 1

    .line 75
    iget-boolean v0, p0, Lo/PrefetchPayloadJsonAdapter;->onPostMessage:Z

    return v0
.end method

.method public final onNavigationEvent(Lo/JustPaySafePayloadJsonAdapter;)Z
    .locals 1

    .line 179
    iget-object v0, p0, Lo/PrefetchPayloadJsonAdapter;->ICustomTabsCallback:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iget-object p1, p1, Lo/JustPaySafePayloadJsonAdapter;->onPostMessage:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final onNavigationEvent(Lo/VisaPayloadWrapper;)Z
    .locals 1

    .line 68
    iget-object v0, p0, Lo/PrefetchPayloadJsonAdapter;->extraCallback:Lo/CredPaymentUiBuilder_PollingStrategyJsonAdapter;

    .line 69
    invoke-virtual {v0, p1}, Lo/CredPaymentUiBuilder_PollingStrategyJsonAdapter;->onPostMessage(Lo/VisaPayloadWrapper;)Lo/CredPaymentUiBuilder_PollingStrategyJsonAdapter;

    move-result-object p1

    iput-object p1, p0, Lo/PrefetchPayloadJsonAdapter;->extraCallback:Lo/CredPaymentUiBuilder_PollingStrategyJsonAdapter;

    .line 70
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final onPostMessage()Lo/CredPaymentUiBuilder_PollingStrategyJsonAdapter;
    .locals 1

    .line 59
    iget-object v0, p0, Lo/PrefetchPayloadJsonAdapter;->extraCallback:Lo/CredPaymentUiBuilder_PollingStrategyJsonAdapter;

    return-object v0
.end method
