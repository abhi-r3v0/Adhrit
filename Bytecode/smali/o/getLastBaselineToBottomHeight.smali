.class final Lo/getLastBaselineToBottomHeight;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Transcode:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field ICustomTabsCallback:Lo/tintDrawableUsingColorFilter;

.field ICustomTabsCallback$Stub:Lo/applyFrameworkTintUsingColorFilter;

.field ICustomTabsCallback$Stub$Proxy:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TTranscode;>;"
        }
    .end annotation
.end field

.field ICustomTabsService:Z

.field asBinder:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lo/AppCompatRadioButton<",
            "*>;>;"
        }
    .end annotation
.end field

.field asInterface:Lo/setLastBaselineToBottomHeight$ICustomTabsCallback;

.field final extraCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/AppCompatImageHelper;",
            ">;"
        }
    .end annotation
.end field

.field extraCommand:Z

.field getInterfaceDescriptor:Lo/AppCompatImageHelper;

.field newSession:Z

.field onMessageChannelReady:Ljava/lang/Object;

.field onNavigationEvent:I

.field final onPostMessage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/setNavigationContentDescription$ICustomTabsCallback<",
            "*>;>;"
        }
    .end annotation
.end field

.field onRelationshipValidationResult:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field onTransact:I

.field requestPostMessageChannel:Z

.field updateVisuals:Lo/getFirstBaselineToTopHeight;

.field warmup:Lo/getTintList;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/getLastBaselineToBottomHeight;->onPostMessage:Ljava/util/List;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/getLastBaselineToBottomHeight;->extraCallback:Ljava/util/List;

    return-void
.end method


# virtual methods
.method final ICustomTabsCallback()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/AppCompatImageHelper;",
            ">;"
        }
    .end annotation

    .line 221
    iget-boolean v0, p0, Lo/getLastBaselineToBottomHeight;->ICustomTabsService:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 222
    iput-boolean v0, p0, Lo/getLastBaselineToBottomHeight;->ICustomTabsService:Z

    .line 223
    iget-object v0, p0, Lo/getLastBaselineToBottomHeight;->extraCallback:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 224
    invoke-virtual {p0}, Lo/getLastBaselineToBottomHeight;->onMessageChannelReady()Ljava/util/List;

    move-result-object v0

    .line 226
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    .line 227
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/setNavigationContentDescription$ICustomTabsCallback;

    .line 228
    iget-object v5, p0, Lo/getLastBaselineToBottomHeight;->extraCallback:Ljava/util/List;

    iget-object v6, v4, Lo/setNavigationContentDescription$ICustomTabsCallback;->onMessageChannelReady:Lo/AppCompatImageHelper;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 229
    iget-object v5, p0, Lo/getLastBaselineToBottomHeight;->extraCallback:Ljava/util/List;

    iget-object v6, v4, Lo/setNavigationContentDescription$ICustomTabsCallback;->onMessageChannelReady:Lo/AppCompatImageHelper;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v5, 0x0

    .line 231
    :goto_1
    iget-object v6, v4, Lo/setNavigationContentDescription$ICustomTabsCallback;->extraCallback:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 232
    iget-object v6, p0, Lo/getLastBaselineToBottomHeight;->extraCallback:Ljava/util/List;

    iget-object v7, v4, Lo/setNavigationContentDescription$ICustomTabsCallback;->extraCallback:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 233
    iget-object v6, p0, Lo/getLastBaselineToBottomHeight;->extraCallback:Ljava/util/List;

    iget-object v7, v4, Lo/setNavigationContentDescription$ICustomTabsCallback;->extraCallback:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 238
    :cond_3
    iget-object v0, p0, Lo/getLastBaselineToBottomHeight;->extraCallback:Ljava/util/List;

    return-object v0
.end method

.method final extraCallback(Ljava/lang/Class;)Lo/AppCompatRadioButton;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TZ;>;)",
            "Lo/AppCompatRadioButton<",
            "TZ;>;"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lo/getLastBaselineToBottomHeight;->asBinder:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/AppCompatRadioButton;

    if-nez v0, :cond_1

    .line 156
    iget-object v1, p0, Lo/getLastBaselineToBottomHeight;->asBinder:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 157
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 158
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/AppCompatRadioButton;

    :cond_1
    if-nez v0, :cond_4

    .line 165
    iget-object v0, p0, Lo/getLastBaselineToBottomHeight;->asBinder:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lo/getLastBaselineToBottomHeight;->requestPostMessageChannel:Z

    if-nez v0, :cond_2

    goto :goto_0

    .line 166
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Missing transformation for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". If you wish to ignore unknown resource types, use the optional transformation methods."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_3
    :goto_0
    invoke-static {}, Lo/isInTouchMode;->onPostMessage()Lo/isInTouchMode;

    move-result-object p1

    return-object p1

    :cond_4
    return-object v0
.end method

.method final onMessageChannelReady()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/setNavigationContentDescription$ICustomTabsCallback<",
            "*>;>;"
        }
    .end annotation

    .line 204
    iget-boolean v0, p0, Lo/getLastBaselineToBottomHeight;->newSession:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 205
    iput-boolean v0, p0, Lo/getLastBaselineToBottomHeight;->newSession:Z

    .line 206
    iget-object v0, p0, Lo/getLastBaselineToBottomHeight;->onPostMessage:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 207
    iget-object v0, p0, Lo/getLastBaselineToBottomHeight;->ICustomTabsCallback:Lo/tintDrawableUsingColorFilter;

    .line 1109
    iget-object v0, v0, Lo/tintDrawableUsingColorFilter;->onNavigationEvent:Lcom/bumptech/glide/Registry;

    .line 207
    iget-object v1, p0, Lo/getLastBaselineToBottomHeight;->onMessageChannelReady:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/Registry;->onPostMessage(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 209
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    .line 210
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/setNavigationContentDescription;

    .line 211
    iget-object v4, p0, Lo/getLastBaselineToBottomHeight;->onMessageChannelReady:Ljava/lang/Object;

    iget v5, p0, Lo/getLastBaselineToBottomHeight;->onNavigationEvent:I

    iget v6, p0, Lo/getLastBaselineToBottomHeight;->onTransact:I

    iget-object v7, p0, Lo/getLastBaselineToBottomHeight;->ICustomTabsCallback$Stub:Lo/applyFrameworkTintUsingColorFilter;

    invoke-interface {v3, v4, v5, v6, v7}, Lo/setNavigationContentDescription;->extraCallback(Ljava/lang/Object;IILo/applyFrameworkTintUsingColorFilter;)Lo/setNavigationContentDescription$ICustomTabsCallback;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 213
    iget-object v4, p0, Lo/getLastBaselineToBottomHeight;->onPostMessage:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 217
    :cond_1
    iget-object v0, p0, Lo/getLastBaselineToBottomHeight;->onPostMessage:Ljava/util/List;

    return-object v0
.end method
