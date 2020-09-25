.class public abstract Lo/compareTo;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private extraCallback:Lo/fromMediaItemList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/fromMediaItemList<",
            "Lo/MediaMetadataCompat$LongKey;",
            "Landroid/view/SubMenu;",
            ">;"
        }
    .end annotation
.end field

.field private onMessageChannelReady:Lo/fromMediaItemList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/fromMediaItemList<",
            "Lo/MediaMetadataCompat$RatingKey;",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field public final onNavigationEvent:Landroid/content/Context;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1034
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1035
    iput-object p1, p0, Lo/compareTo;->onNavigationEvent:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected final onMessageChannelReady()V
    .locals 1

    .line 1083
    iget-object v0, p0, Lo/compareTo;->onMessageChannelReady:Lo/fromMediaItemList;

    if-eqz v0, :cond_0

    .line 1084
    invoke-virtual {v0}, Lo/fromMediaItemList;->clear()V

    .line 1086
    :cond_0
    iget-object v0, p0, Lo/compareTo;->extraCallback:Lo/fromMediaItemList;

    if-eqz v0, :cond_1

    .line 1087
    invoke-virtual {v0}, Lo/fromMediaItemList;->clear()V

    :cond_1
    return-void
.end method

.method protected final onMessageChannelReady(I)V
    .locals 3

    .line 1092
    iget-object v0, p0, Lo/compareTo;->onMessageChannelReady:Lo/fromMediaItemList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1095
    :goto_0
    iget-object v1, p0, Lo/compareTo;->onMessageChannelReady:Lo/fromMediaItemList;

    invoke-virtual {v1}, Lo/fromMediaItemList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1096
    iget-object v1, p0, Lo/compareTo;->onMessageChannelReady:Lo/fromMediaItemList;

    .line 1390
    iget-object v1, v1, Lo/fromMediaItemList;->extraCallback:[Ljava/lang/Object;

    shl-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    .line 1096
    check-cast v1, Lo/MediaMetadataCompat$RatingKey;

    invoke-interface {v1}, Lo/MediaMetadataCompat$RatingKey;->getGroupId()I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 1097
    iget-object v1, p0, Lo/compareTo;->onMessageChannelReady:Lo/fromMediaItemList;

    invoke-virtual {v1, v0}, Lo/fromMediaItemList;->extraCallback(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final onNavigationEvent(Landroid/view/MenuItem;)Landroid/view/MenuItem;
    .locals 2

    .line 1039
    instance-of v0, p1, Lo/MediaMetadataCompat$RatingKey;

    if-eqz v0, :cond_1

    .line 1040
    move-object v0, p1

    check-cast v0, Lo/MediaMetadataCompat$RatingKey;

    .line 1043
    iget-object v1, p0, Lo/compareTo;->onMessageChannelReady:Lo/fromMediaItemList;

    if-nez v1, :cond_0

    .line 1044
    new-instance v1, Lo/fromMediaItemList;

    invoke-direct {v1}, Lo/fromMediaItemList;-><init>()V

    iput-object v1, p0, Lo/compareTo;->onMessageChannelReady:Lo/fromMediaItemList;

    .line 1048
    :cond_0
    iget-object v1, p0, Lo/compareTo;->onMessageChannelReady:Lo/fromMediaItemList;

    invoke-virtual {v1, p1}, Lo/fromMediaItemList;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MenuItem;

    if-nez p1, :cond_1

    .line 1052
    new-instance p1, Lo/isConnected;

    iget-object v1, p0, Lo/compareTo;->onNavigationEvent:Landroid/content/Context;

    invoke-direct {p1, v1, v0}, Lo/isConnected;-><init>(Landroid/content/Context;Lo/MediaMetadataCompat$RatingKey;)V

    .line 1053
    iget-object v1, p0, Lo/compareTo;->onMessageChannelReady:Lo/fromMediaItemList;

    invoke-virtual {v1, v0, p1}, Lo/fromMediaItemList;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object p1
.end method

.method public final onNavigationEvent(Landroid/view/SubMenu;)Landroid/view/SubMenu;
    .locals 2

    .line 1062
    instance-of v0, p1, Lo/MediaMetadataCompat$LongKey;

    if-eqz v0, :cond_2

    .line 1063
    check-cast p1, Lo/MediaMetadataCompat$LongKey;

    .line 1066
    iget-object v0, p0, Lo/compareTo;->extraCallback:Lo/fromMediaItemList;

    if-nez v0, :cond_0

    .line 1067
    new-instance v0, Lo/fromMediaItemList;

    invoke-direct {v0}, Lo/fromMediaItemList;-><init>()V

    iput-object v0, p0, Lo/compareTo;->extraCallback:Lo/fromMediaItemList;

    .line 1070
    :cond_0
    iget-object v0, p0, Lo/compareTo;->extraCallback:Lo/fromMediaItemList;

    invoke-virtual {v0, p1}, Lo/fromMediaItemList;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SubMenu;

    if-nez v0, :cond_1

    .line 1073
    new-instance v0, Lo/unsubscribe;

    iget-object v1, p0, Lo/compareTo;->onNavigationEvent:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lo/unsubscribe;-><init>(Landroid/content/Context;Lo/MediaMetadataCompat$LongKey;)V

    .line 1074
    iget-object v1, p0, Lo/compareTo;->extraCallback:Lo/fromMediaItemList;

    invoke-virtual {v1, p1, v0}, Lo/fromMediaItemList;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0

    :cond_2
    return-object p1
.end method

.method protected final onPostMessage(I)V
    .locals 3

    .line 2104
    iget-object v0, p0, Lo/compareTo;->onMessageChannelReady:Lo/fromMediaItemList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2107
    :goto_0
    iget-object v1, p0, Lo/compareTo;->onMessageChannelReady:Lo/fromMediaItemList;

    invoke-virtual {v1}, Lo/fromMediaItemList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2108
    iget-object v1, p0, Lo/compareTo;->onMessageChannelReady:Lo/fromMediaItemList;

    .line 2390
    iget-object v1, v1, Lo/fromMediaItemList;->extraCallback:[Ljava/lang/Object;

    shl-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    .line 2108
    check-cast v1, Lo/MediaMetadataCompat$RatingKey;

    invoke-interface {v1}, Lo/MediaMetadataCompat$RatingKey;->getItemId()I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 2109
    iget-object p1, p0, Lo/compareTo;->onMessageChannelReady:Lo/fromMediaItemList;

    invoke-virtual {p1, v0}, Lo/fromMediaItemList;->extraCallback(I)Ljava/lang/Object;

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
