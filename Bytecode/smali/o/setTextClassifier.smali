.class public Lo/setTextClassifier;
.super Lo/measureChildBeforeLayout;
.source ""

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Lo/measureChildBeforeLayout<",
        "Lo/setTextClassifier<",
        "TTranscodeType;>;>;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private ICustomTabsService$Stub:Lo/access$000;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/access$000<",
            "*-TTranscodeType;>;"
        }
    .end annotation
.end field

.field private ICustomTabsService$Stub$Proxy:Ljava/lang/Object;

.field private final IPostMessageService:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TTranscodeType;>;"
        }
    .end annotation
.end field

.field private final IPostMessageService$Stub:Lo/AppCompatImageButton;

.field private IPostMessageService$Stub$Proxy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/layoutVertical<",
            "TTranscodeType;>;>;"
        }
    .end annotation
.end field

.field private cancelAll:Z

.field private final extraCommand:Landroid/content/Context;

.field private final validateRelationship:Lo/tintDrawableUsingColorFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 55
    new-instance v0, Lo/setHorizontalGravity;

    invoke-direct {v0}, Lo/setHorizontalGravity;-><init>()V

    sget-object v1, Lo/getFirstBaselineToTopHeight;->onPostMessage:Lo/getFirstBaselineToTopHeight;

    .line 57
    invoke-virtual {v0, v1}, Lo/measureChildBeforeLayout;->ICustomTabsCallback(Lo/getFirstBaselineToTopHeight;)Lo/measureChildBeforeLayout;

    move-result-object v0

    check-cast v0, Lo/setHorizontalGravity;

    sget-object v1, Lo/getTintList;->onNavigationEvent:Lo/getTintList;

    .line 58
    invoke-virtual {v0, v1}, Lo/measureChildBeforeLayout;->extraCallback(Lo/getTintList;)Lo/measureChildBeforeLayout;

    move-result-object v0

    check-cast v0, Lo/setHorizontalGravity;

    const/4 v1, 0x1

    .line 59
    invoke-virtual {v0, v1}, Lo/measureChildBeforeLayout;->extraCallback(Z)Lo/measureChildBeforeLayout;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/Glide;Lo/AppCompatImageButton;Ljava/lang/Class;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Glide;",
            "Lo/AppCompatImageButton;",
            "Ljava/lang/Class<",
            "TTranscodeType;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 89
    invoke-direct {p0}, Lo/measureChildBeforeLayout;-><init>()V

    .line 91
    iput-object p2, p0, Lo/setTextClassifier;->IPostMessageService$Stub:Lo/AppCompatImageButton;

    .line 92
    iput-object p3, p0, Lo/setTextClassifier;->IPostMessageService:Ljava/lang/Class;

    .line 93
    iput-object p4, p0, Lo/setTextClassifier;->extraCommand:Landroid/content/Context;

    .line 94
    invoke-virtual {p2, p3}, Lo/AppCompatImageButton;->ICustomTabsCallback(Ljava/lang/Class;)Lo/access$000;

    move-result-object p3

    iput-object p3, p0, Lo/setTextClassifier;->ICustomTabsService$Stub:Lo/access$000;

    .line 1628
    iget-object p1, p1, Lcom/bumptech/glide/Glide;->ICustomTabsCallback:Lo/tintDrawableUsingColorFilter;

    .line 95
    iput-object p1, p0, Lo/setTextClassifier;->validateRelationship:Lo/tintDrawableUsingColorFilter;

    .line 1678
    iget-object p1, p2, Lo/AppCompatImageButton;->onNavigationEvent:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2117
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lo/layoutVertical;

    .line 2118
    invoke-virtual {p0, p3}, Lo/setTextClassifier;->onNavigationEvent(Lo/layoutVertical;)Lo/setTextClassifier;

    goto :goto_0

    .line 98
    :cond_0
    invoke-virtual {p2}, Lo/AppCompatImageButton;->asBinder()Lo/setHorizontalGravity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/setTextClassifier;->ICustomTabsCallback(Lo/measureChildBeforeLayout;)Lo/setTextClassifier;

    return-void
.end method


# virtual methods
.method public synthetic ICustomTabsCallback()Lo/measureChildBeforeLayout;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lo/setTextClassifier;->onPostMessage()Lo/setTextClassifier;

    move-result-object v0

    return-object v0
.end method

.method public ICustomTabsCallback(Landroid/graphics/Bitmap;)Lo/setTextClassifier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Lo/setTextClassifier<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 4369
    iput-object p1, p0, Lo/setTextClassifier;->ICustomTabsService$Stub$Proxy:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 4370
    iput-boolean p1, p0, Lo/setTextClassifier;->cancelAll:Z

    .line 395
    sget-object p1, Lo/getFirstBaselineToTopHeight;->ICustomTabsCallback:Lo/getFirstBaselineToTopHeight;

    .line 5052
    new-instance v0, Lo/setHorizontalGravity;

    invoke-direct {v0}, Lo/setHorizontalGravity;-><init>()V

    invoke-virtual {v0, p1}, Lo/measureChildBeforeLayout;->ICustomTabsCallback(Lo/getFirstBaselineToTopHeight;)Lo/measureChildBeforeLayout;

    move-result-object p1

    check-cast p1, Lo/setHorizontalGravity;

    .line 395
    invoke-virtual {p0, p1}, Lo/setTextClassifier;->ICustomTabsCallback(Lo/measureChildBeforeLayout;)Lo/setTextClassifier;

    move-result-object p1

    return-object p1
.end method

.method public ICustomTabsCallback(Ljava/lang/Integer;)Lo/setTextClassifier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lo/setTextClassifier<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 6369
    iput-object p1, p0, Lo/setTextClassifier;->ICustomTabsService$Stub$Proxy:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 6370
    iput-boolean p1, p0, Lo/setTextClassifier;->cancelAll:Z

    .line 528
    iget-object p1, p0, Lo/setTextClassifier;->extraCommand:Landroid/content/Context;

    invoke-static {p1}, Lo/setModal;->ICustomTabsCallback(Landroid/content/Context;)Lo/AppCompatImageHelper;

    move-result-object p1

    .line 7134
    new-instance v0, Lo/setHorizontalGravity;

    invoke-direct {v0}, Lo/setHorizontalGravity;-><init>()V

    invoke-virtual {v0, p1}, Lo/measureChildBeforeLayout;->ICustomTabsCallback(Lo/AppCompatImageHelper;)Lo/measureChildBeforeLayout;

    move-result-object p1

    check-cast p1, Lo/setHorizontalGravity;

    .line 528
    invoke-virtual {p0, p1}, Lo/setTextClassifier;->ICustomTabsCallback(Lo/measureChildBeforeLayout;)Lo/setTextClassifier;

    move-result-object p1

    return-object p1
.end method

.method public ICustomTabsCallback(Ljava/lang/Object;)Lo/setTextClassifier;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lo/setTextClassifier<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 3369
    iput-object p1, p0, Lo/setTextClassifier;->ICustomTabsService$Stub$Proxy:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 3370
    iput-boolean p1, p0, Lo/setTextClassifier;->cancelAll:Z

    return-object p0
.end method

.method public ICustomTabsCallback(Lo/layoutVertical;)Lo/setTextClassifier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/layoutVertical<",
            "TTranscodeType;>;)",
            "Lo/setTextClassifier<",
            "TTranscodeType;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 175
    iput-object v0, p0, Lo/setTextClassifier;->IPostMessageService$Stub$Proxy:Ljava/util/List;

    .line 176
    invoke-virtual {p0, p1}, Lo/setTextClassifier;->onNavigationEvent(Lo/layoutVertical;)Lo/setTextClassifier;

    move-result-object p1

    return-object p1
.end method

.method public ICustomTabsCallback(Lo/measureChildBeforeLayout;)Lo/setTextClassifier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/measureChildBeforeLayout<",
            "*>;)",
            "Lo/setTextClassifier<",
            "TTranscodeType;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 138
    invoke-super {p0, p1}, Lo/measureChildBeforeLayout;->onPostMessage(Lo/measureChildBeforeLayout;)Lo/measureChildBeforeLayout;

    move-result-object p1

    check-cast p1, Lo/setTextClassifier;

    return-object p1

    .line 3029
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Argument must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 51
    invoke-virtual {p0}, Lo/setTextClassifier;->onPostMessage()Lo/setTextClassifier;

    move-result-object v0

    return-object v0
.end method

.method public final extraCallback(Lo/ListPopupWindow;Lo/layoutVertical;Lo/measureChildBeforeLayout;Ljava/util/concurrent/Executor;)Lo/ListPopupWindow;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lo/ListPopupWindow<",
            "TTranscodeType;>;>(TY;",
            "Lo/layoutVertical<",
            "TTranscodeType;>;",
            "Lo/measureChildBeforeLayout<",
            "*>;",
            "Ljava/util/concurrent/Executor;",
            ")TY;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    const-string v14, "Argument must not be null"

    if-eqz v15, :cond_5

    .line 617
    iget-boolean v1, v0, Lo/setTextClassifier;->cancelAll:Z

    if-eqz v1, :cond_4

    const/4 v11, 0x0

    .line 8850
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iget-object v1, v0, Lo/setTextClassifier;->ICustomTabsService$Stub:Lo/access$000;

    .line 8856
    invoke-virtual/range {p3 .. p3}, Lo/measureChildBeforeLayout;->ICustomTabsCallback$Stub$Proxy()Lo/getTintList;

    move-result-object v9

    .line 8857
    invoke-virtual/range {p3 .. p3}, Lo/measureChildBeforeLayout;->newSession()I

    move-result v7

    .line 8858
    invoke-virtual/range {p3 .. p3}, Lo/measureChildBeforeLayout;->ICustomTabsService()I

    move-result v8

    .line 9055
    iget-object v2, v0, Lo/setTextClassifier;->extraCommand:Landroid/content/Context;

    iget-object v4, v0, Lo/setTextClassifier;->validateRelationship:Lo/tintDrawableUsingColorFilter;

    iget-object v5, v0, Lo/setTextClassifier;->ICustomTabsService$Stub$Proxy:Ljava/lang/Object;

    iget-object v6, v0, Lo/setTextClassifier;->IPostMessageService:Ljava/lang/Class;

    iget-object v12, v0, Lo/setTextClassifier;->IPostMessageService$Stub$Proxy:Ljava/util/List;

    const/4 v13, 0x0

    .line 9104
    iget-object v10, v4, Lo/tintDrawableUsingColorFilter;->ICustomTabsCallback$Stub:Lo/setLineHeight;

    .line 10093
    iget-object v1, v1, Lo/access$000;->ICustomTabsCallback:Lo/isModal;

    move-object/from16 v16, v1

    move-object v1, v2

    move-object v2, v4

    move-object v4, v5

    move-object v5, v6

    move-object/from16 v6, p3

    move-object/from16 v17, v10

    move-object/from16 v10, p1

    move-object/from16 v18, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v16

    move-object/from16 v16, p4

    .line 9055
    invoke-static/range {v1 .. v16}, Lo/getGravity;->ICustomTabsCallback(Landroid/content/Context;Lo/tintDrawableUsingColorFilter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lo/measureChildBeforeLayout;IILo/getTintList;Lo/ListPopupWindow;Lo/layoutVertical;Ljava/util/List;Lo/onPostMessage$extraCallback;Lo/setLineHeight;Lo/isModal;Ljava/util/concurrent/Executor;)Lo/getGravity;

    move-result-object v1

    .line 623
    invoke-interface/range {p1 .. p1}, Lo/ListPopupWindow;->onPostMessage()Lo/getNextLocationOffset;

    move-result-object v2

    .line 624
    invoke-interface {v1, v2}, Lo/getNextLocationOffset;->onMessageChannelReady(Lo/getNextLocationOffset;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object/from16 v3, p3

    .line 11370
    iget-boolean v3, v3, Lo/measureChildBeforeLayout;->asBinder:Z

    if-nez v3, :cond_0

    .line 10653
    invoke-interface {v2}, Lo/getNextLocationOffset;->onPostMessage()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_3

    if-eqz v2, :cond_2

    .line 630
    move-object v1, v2

    check-cast v1, Lo/getNextLocationOffset;

    invoke-interface {v1}, Lo/getNextLocationOffset;->extraCallback()Z

    move-result v1

    if-nez v1, :cond_1

    .line 634
    invoke-interface {v2}, Lo/getNextLocationOffset;->onNavigationEvent()V

    :cond_1
    move-object/from16 v2, p1

    return-object v2

    .line 12029
    :cond_2
    new-instance v1, Ljava/lang/NullPointerException;

    move-object/from16 v2, v18

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    move-object/from16 v2, p1

    .line 639
    iget-object v3, v0, Lo/setTextClassifier;->IPostMessageService$Stub:Lo/AppCompatImageButton;

    invoke-virtual {v3, v2}, Lo/AppCompatImageButton;->onMessageChannelReady(Lo/ListPopupWindow;)V

    .line 640
    invoke-interface {v2, v1}, Lo/ListPopupWindow;->onPostMessage(Lo/getNextLocationOffset;)V

    .line 641
    iget-object v3, v0, Lo/setTextClassifier;->IPostMessageService$Stub:Lo/AppCompatImageButton;

    invoke-virtual {v3, v2, v1}, Lo/AppCompatImageButton;->onMessageChannelReady(Lo/ListPopupWindow;Lo/getNextLocationOffset;)V

    return-object v2

    .line 618
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "You must call #load() before calling #into()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    move-object v2, v14

    .line 8029
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final onMessageChannelReady(Landroid/widget/ImageView;)Lo/getPromptPosition;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            ")",
            "Lo/getPromptPosition<",
            "Landroid/widget/ImageView;",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 668
    invoke-static {}, Lo/getHorizontalOffset;->onPostMessage()V

    if-eqz p1, :cond_3

    .line 672
    invoke-virtual {p0}, Lo/measureChildBeforeLayout;->extraCallback()Z

    move-result v0

    if-nez v0, :cond_0

    .line 673
    invoke-virtual {p0}, Lo/measureChildBeforeLayout;->onNavigationEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 674
    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 678
    sget-object v0, Lo/setTextClassifier$5;->onPostMessage:[I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 691
    :pswitch_0
    invoke-virtual {p0}, Lo/measureChildBeforeLayout;->ICustomTabsCallback()Lo/measureChildBeforeLayout;

    move-result-object v0

    invoke-virtual {v0}, Lo/measureChildBeforeLayout;->onRelationshipValidationResult()Lo/measureChildBeforeLayout;

    move-result-object v0

    goto :goto_1

    .line 688
    :pswitch_1
    invoke-virtual {p0}, Lo/measureChildBeforeLayout;->ICustomTabsCallback()Lo/measureChildBeforeLayout;

    move-result-object v0

    invoke-virtual {v0}, Lo/measureChildBeforeLayout;->asInterface()Lo/measureChildBeforeLayout;

    move-result-object v0

    goto :goto_1

    .line 683
    :pswitch_2
    invoke-virtual {p0}, Lo/measureChildBeforeLayout;->ICustomTabsCallback()Lo/measureChildBeforeLayout;

    move-result-object v0

    invoke-virtual {v0}, Lo/measureChildBeforeLayout;->onRelationshipValidationResult()Lo/measureChildBeforeLayout;

    move-result-object v0

    goto :goto_1

    .line 680
    :pswitch_3
    invoke-virtual {p0}, Lo/measureChildBeforeLayout;->ICustomTabsCallback()Lo/measureChildBeforeLayout;

    move-result-object v0

    invoke-virtual {v0}, Lo/measureChildBeforeLayout;->onMessageChannelReady()Lo/measureChildBeforeLayout;

    move-result-object v0

    goto :goto_1

    :cond_0
    :goto_0
    move-object v0, p0

    .line 700
    :goto_1
    iget-object v1, p0, Lo/setTextClassifier;->IPostMessageService:Ljava/lang/Class;

    .line 14017
    const-class v2, Landroid/graphics/Bitmap;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 14018
    new-instance v1, Lo/getOrientation;

    invoke-direct {v1, p1}, Lo/getOrientation;-><init>(Landroid/widget/ImageView;)V

    goto :goto_2

    .line 14019
    :cond_1
    const-class v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 14020
    new-instance v1, Lo/LinearLayoutCompat$DividerMode;

    invoke-direct {v1, p1}, Lo/LinearLayoutCompat$DividerMode;-><init>(Landroid/widget/ImageView;)V

    :goto_2
    const/4 p1, 0x0

    .line 704
    invoke-static {}, Lo/setAnchorView;->onPostMessage()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 700
    invoke-virtual {p0, v1, p1, v0, v2}, Lo/setTextClassifier;->extraCallback(Lo/ListPopupWindow;Lo/layoutVertical;Lo/measureChildBeforeLayout;Ljava/util/concurrent/Executor;)Lo/ListPopupWindow;

    move-result-object p1

    check-cast p1, Lo/getPromptPosition;

    return-object p1

    .line 14022
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unhandled class: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", try .as*(Class).transcode(ResourceTranscoder)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13029
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Argument must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onNavigationEvent(Lo/layoutVertical;)Lo/setTextClassifier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/layoutVertical<",
            "TTranscodeType;>;)",
            "Lo/setTextClassifier<",
            "TTranscodeType;>;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 191
    iget-object v0, p0, Lo/setTextClassifier;->IPostMessageService$Stub$Proxy:Ljava/util/List;

    if-nez v0, :cond_0

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/setTextClassifier;->IPostMessageService$Stub$Proxy:Ljava/util/List;

    .line 194
    :cond_0
    iget-object v0, p0, Lo/setTextClassifier;->IPostMessageService$Stub$Proxy:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p0
.end method

.method public synthetic onPostMessage(Lo/measureChildBeforeLayout;)Lo/measureChildBeforeLayout;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lo/setTextClassifier;->ICustomTabsCallback(Lo/measureChildBeforeLayout;)Lo/setTextClassifier;

    move-result-object p1

    return-object p1
.end method

.method public onPostMessage()Lo/setTextClassifier;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/setTextClassifier<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 585
    invoke-super {p0}, Lo/measureChildBeforeLayout;->ICustomTabsCallback()Lo/measureChildBeforeLayout;

    move-result-object v0

    check-cast v0, Lo/setTextClassifier;

    .line 586
    iget-object v1, v0, Lo/setTextClassifier;->ICustomTabsService$Stub:Lo/access$000;

    invoke-virtual {v1}, Lo/access$000;->onNavigationEvent()Lo/access$000;

    move-result-object v1

    iput-object v1, v0, Lo/setTextClassifier;->ICustomTabsService$Stub:Lo/access$000;

    return-object v0
.end method

.method public onPostMessage(Ljava/lang/String;)Lo/setTextClassifier;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lo/setTextClassifier<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 5369
    iput-object p1, p0, Lo/setTextClassifier;->ICustomTabsService$Stub$Proxy:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 5370
    iput-boolean p1, p0, Lo/setTextClassifier;->cancelAll:Z

    return-object p0
.end method
