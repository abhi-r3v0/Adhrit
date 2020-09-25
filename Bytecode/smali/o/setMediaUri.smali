.class public final Lo/setMediaUri;
.super Ljava/lang/Object;
.source ""


# instance fields
.field final ICustomTabsCallback:[Ljava/lang/CharSequence;

.field final asInterface:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final extraCallback:Ljava/lang/CharSequence;

.field final onMessageChannelReady:Z

.field final onNavigationEvent:Ljava/lang/String;

.field final onPostMessage:Landroid/os/Bundle;

.field private final onRelationshipValidationResult:I


# direct methods
.method static onNavigationEvent([Lo/setMediaUri;)[Landroid/app/RemoteInput;
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 552
    :cond_0
    array-length v0, p0

    new-array v0, v0, [Landroid/app/RemoteInput;

    const/4 v1, 0x0

    .line 553
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 554
    aget-object v2, p0, v1

    .line 1561
    new-instance v3, Landroid/app/RemoteInput$Builder;

    .line 2116
    iget-object v4, v2, Lo/setMediaUri;->onNavigationEvent:Ljava/lang/String;

    .line 1562
    invoke-direct {v3, v4}, Landroid/app/RemoteInput$Builder;-><init>(Ljava/lang/String;)V

    .line 2123
    iget-object v4, v2, Lo/setMediaUri;->extraCallback:Ljava/lang/CharSequence;

    .line 1563
    invoke-virtual {v3, v4}, Landroid/app/RemoteInput$Builder;->setLabel(Ljava/lang/CharSequence;)Landroid/app/RemoteInput$Builder;

    move-result-object v3

    .line 2130
    iget-object v4, v2, Lo/setMediaUri;->ICustomTabsCallback:[Ljava/lang/CharSequence;

    .line 1564
    invoke-virtual {v3, v4}, Landroid/app/RemoteInput$Builder;->setChoices([Ljava/lang/CharSequence;)Landroid/app/RemoteInput$Builder;

    move-result-object v3

    .line 2156
    iget-boolean v4, v2, Lo/setMediaUri;->onMessageChannelReady:Z

    .line 1565
    invoke-virtual {v3, v4}, Landroid/app/RemoteInput$Builder;->setAllowFreeFormInput(Z)Landroid/app/RemoteInput$Builder;

    move-result-object v3

    .line 2171
    iget-object v4, v2, Lo/setMediaUri;->onPostMessage:Landroid/os/Bundle;

    .line 1566
    invoke-virtual {v3, v4}, Landroid/app/RemoteInput$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/RemoteInput$Builder;

    move-result-object v3

    .line 1567
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1d

    if-lt v4, v5, :cond_1

    .line 3164
    iget v2, v2, Lo/setMediaUri;->onRelationshipValidationResult:I

    .line 1568
    invoke-virtual {v3, v2}, Landroid/app/RemoteInput$Builder;->setEditChoicesBeforeSending(I)Landroid/app/RemoteInput$Builder;

    .line 1570
    :cond_1
    invoke-virtual {v3}, Landroid/app/RemoteInput$Builder;->build()Landroid/app/RemoteInput;

    move-result-object v2

    .line 554
    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method
