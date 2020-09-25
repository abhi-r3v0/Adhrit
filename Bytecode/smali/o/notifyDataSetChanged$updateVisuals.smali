.class final Lo/notifyDataSetChanged$updateVisuals;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/notifyDataSetChanged;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "Lo/getThumbTintList<",
        "+",
        "Lo/getFont;",
        ">;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u001a\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0004 \u0005*\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/dreamplug/androidapp/core/Event;",
        "Lcom/dreamplug/androidapp/deeplink/DeepLinkData;",
        "kotlin.jvm.PlatformType",
        "onChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/notifyDataSetChanged;


# direct methods
.method constructor <init>(Lo/notifyDataSetChanged;)V
    .locals 0

    iput-object p1, p0, Lo/notifyDataSetChanged$updateVisuals;->onMessageChannelReady:Lo/notifyDataSetChanged;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 8

    .line 78
    check-cast p1, Lo/getThumbTintList;

    .line 2011
    iget-boolean v0, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move-object p1, v1

    goto :goto_0

    .line 2015
    :cond_0
    iput-boolean v2, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    .line 2016
    iget-object p1, p1, Lo/throwIfInMutationOperation;->onPostMessage:Ljava/lang/Object;

    .line 1207
    :goto_0
    check-cast p1, Lo/getFont;

    if-eqz p1, :cond_e

    .line 2204
    iget-object v0, p1, Lo/getFont;->cancelAll:Ljava/lang/String;

    .line 1210
    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v3, 0x1

    :goto_2
    if-eqz v3, :cond_7

    .line 3178
    iget-object v3, p1, Lo/getFont;->ICustomTabsCallback:Ljava/lang/String;

    if-eqz v3, :cond_4

    if-eqz v3, :cond_3

    .line 1212
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, "(this as java.lang.String).toLowerCase()"

    invoke-static {v1, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1213
    :cond_4
    :goto_3
    invoke-static {}, Lo/setTrackResource$onPostMessage;->values()[Lo/setTrackResource$onPostMessage;

    move-result-object v3

    .line 1456
    array-length v5, v3

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v5, :cond_6

    aget-object v7, v3, v6

    .line 4117
    iget-object v7, v7, Lo/setTrackResource$onPostMessage;->ICustomTabsService:Ljava/lang/String;

    .line 1213
    invoke-static {v7, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_5

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    :goto_5
    if-eqz v2, :cond_7

    move-object v0, v1

    .line 1217
    :cond_7
    sget-object v1, Lo/setTrackResource;->ICustomTabsCallback:Lo/setTrackResource;

    invoke-static {v0}, Lo/setTrackResource;->ICustomTabsCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cards"

    const-string v2, "home"

    const-string v3, "lifestyle"

    const-string v4, "deeplink"

    if-eqz v0, :cond_a

    .line 1219
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto/16 :goto_c

    :sswitch_0
    const-string v1, "money"

    .line 1225
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lo/notifyDataSetChanged$updateVisuals;->onMessageChannelReady:Lo/notifyDataSetChanged;

    invoke-static {v0}, Lo/notifyDataSetChanged;->onMessageChannelReady(Lo/notifyDataSetChanged;)Lo/dispatchAnimationStarted;

    move-result-object v0

    .line 8037
    sget-object v1, Lo/onGetChildDrawingOrder$onItemLoaded$onMessageChannelReady;->onPostMessage:Lo/onGetChildDrawingOrder$onItemLoaded$onMessageChannelReady;

    check-cast v1, Lo/onGetChildDrawingOrder$onItemLoaded;

    .line 9018
    iget-object v0, v0, Lo/dispatchAnimationStarted;->ICustomTabsCallback:Lo/setActive;

    new-instance v2, Lo/getThumbTintList;

    invoke-direct {v2, v1}, Lo/getThumbTintList;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 1221
    :sswitch_1
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lo/notifyDataSetChanged$updateVisuals;->onMessageChannelReady:Lo/notifyDataSetChanged;

    invoke-static {v0}, Lo/notifyDataSetChanged;->onMessageChannelReady(Lo/notifyDataSetChanged;)Lo/dispatchAnimationStarted;

    move-result-object v0

    new-instance v1, Lo/onDetach$ICustomTabsService;

    .line 6184
    iget-object v2, p1, Lo/getFont;->asBinder:Ljava/lang/String;

    if-nez v2, :cond_8

    goto :goto_6

    :cond_8
    move-object v4, v2

    .line 6188
    :goto_6
    iget-object v2, p1, Lo/getFont;->newSession:Ljava/lang/String;

    .line 1221
    invoke-direct {v1, v4, v2}, Lo/onDetach$ICustomTabsService;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lo/dispatchAnimationStarted;->ICustomTabsCallback(Lo/onDetach$ICustomTabsService;)V

    goto/16 :goto_c

    .line 1220
    :sswitch_2
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lo/notifyDataSetChanged$updateVisuals;->onMessageChannelReady:Lo/notifyDataSetChanged;

    invoke-static {v0}, Lo/notifyDataSetChanged;->onMessageChannelReady(Lo/notifyDataSetChanged;)Lo/dispatchAnimationStarted;

    move-result-object v0

    .line 5033
    sget-object v1, Lo/onGetChildDrawingOrder$onItemLoaded$extraCallback;->onNavigationEvent:Lo/onGetChildDrawingOrder$onItemLoaded$extraCallback;

    check-cast v1, Lo/onGetChildDrawingOrder$onItemLoaded;

    .line 6018
    iget-object v0, v0, Lo/dispatchAnimationStarted;->ICustomTabsCallback:Lo/setActive;

    new-instance v2, Lo/getThumbTintList;

    invoke-direct {v2, v1}, Lo/getThumbTintList;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 1223
    :sswitch_3
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lo/notifyDataSetChanged$updateVisuals;->onMessageChannelReady:Lo/notifyDataSetChanged;

    invoke-static {v0}, Lo/notifyDataSetChanged;->onMessageChannelReady(Lo/notifyDataSetChanged;)Lo/dispatchAnimationStarted;

    move-result-object v0

    .line 7184
    iget-object v1, p1, Lo/getFont;->asBinder:Ljava/lang/String;

    if-nez v1, :cond_9

    goto :goto_7

    :cond_9
    move-object v4, v1

    .line 1223
    :goto_7
    invoke-virtual {v0, v4}, Lo/dispatchAnimationStarted;->ICustomTabsCallback(Ljava/lang/String;)V

    goto/16 :goto_c

    .line 9177
    :cond_a
    iget-object v0, p1, Lo/getFont;->onNavigationEvent:Ljava/lang/String;

    if-nez v0, :cond_b

    goto/16 :goto_c

    .line 1229
    :cond_b
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_1

    goto :goto_c

    :sswitch_4
    const-string/jumbo v1, "rewards"

    .line 1235
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_a

    :sswitch_5
    const-string v1, "control"

    .line 1231
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_8

    :sswitch_6
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1232
    :goto_8
    iget-object v0, p0, Lo/notifyDataSetChanged$updateVisuals;->onMessageChannelReady:Lo/notifyDataSetChanged;

    invoke-static {v0}, Lo/notifyDataSetChanged;->onMessageChannelReady(Lo/notifyDataSetChanged;)Lo/dispatchAnimationStarted;

    move-result-object v0

    new-instance v1, Lo/onDetach$ICustomTabsService;

    .line 11184
    iget-object v2, p1, Lo/getFont;->asBinder:Ljava/lang/String;

    if-nez v2, :cond_c

    goto :goto_9

    :cond_c
    move-object v4, v2

    .line 11188
    :goto_9
    iget-object v2, p1, Lo/getFont;->newSession:Ljava/lang/String;

    .line 1232
    invoke-direct {v1, v4, v2}, Lo/onDetach$ICustomTabsService;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lo/dispatchAnimationStarted;->ICustomTabsCallback(Lo/onDetach$ICustomTabsService;)V

    goto :goto_c

    .line 1230
    :sswitch_7
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_b

    .line 1235
    :sswitch_8
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1237
    :goto_a
    iget-object v0, p0, Lo/notifyDataSetChanged$updateVisuals;->onMessageChannelReady:Lo/notifyDataSetChanged;

    invoke-static {v0}, Lo/notifyDataSetChanged;->onMessageChannelReady(Lo/notifyDataSetChanged;)Lo/dispatchAnimationStarted;

    move-result-object v0

    .line 12184
    iget-object v1, p1, Lo/getFont;->asBinder:Ljava/lang/String;

    .line 1237
    invoke-virtual {v0, v1}, Lo/dispatchAnimationStarted;->ICustomTabsCallback(Ljava/lang/String;)V

    goto :goto_c

    :sswitch_9
    const-string v1, "profile"

    .line 1230
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    :goto_b
    iget-object v0, p0, Lo/notifyDataSetChanged$updateVisuals;->onMessageChannelReady:Lo/notifyDataSetChanged;

    invoke-static {v0}, Lo/notifyDataSetChanged;->onMessageChannelReady(Lo/notifyDataSetChanged;)Lo/dispatchAnimationStarted;

    move-result-object v0

    .line 10033
    sget-object v1, Lo/onGetChildDrawingOrder$onItemLoaded$extraCallback;->onNavigationEvent:Lo/onGetChildDrawingOrder$onItemLoaded$extraCallback;

    check-cast v1, Lo/onGetChildDrawingOrder$onItemLoaded;

    .line 11018
    iget-object v0, v0, Lo/dispatchAnimationStarted;->ICustomTabsCallback:Lo/setActive;

    new-instance v2, Lo/getThumbTintList;

    invoke-direct {v2, v1}, Lo/getThumbTintList;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 1241
    :cond_d
    :goto_c
    sget-object v0, Lo/getNonResourceString;->ICustomTabsCallback$Stub:Lo/getNonResourceString;

    new-instance v1, Lo/getThumbTintList;

    invoke-direct {v1, p1}, Lo/getThumbTintList;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    :cond_e
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x112593cb -> :sswitch_3
        0x30f4df -> :sswitch_2
        0x5a0e763 -> :sswitch_1
        0x63420c0 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x12717657 -> :sswitch_9
        -0x112593cb -> :sswitch_8
        0x30f4df -> :sswitch_7
        0x5a0e763 -> :sswitch_6
        0x38b7655d -> :sswitch_5
        0x419a9724 -> :sswitch_4
    .end sparse-switch
.end method
