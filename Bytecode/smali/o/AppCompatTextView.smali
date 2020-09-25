.class final Lo/AppCompatTextView;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/compatMeasureContentWidth;
.implements Lo/AppCompatImageView$ICustomTabsCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/compatMeasureContentWidth;",
        "Lo/AppCompatImageView$ICustomTabsCallback<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/getLastBaselineToBottomHeight;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getLastBaselineToBottomHeight<",
            "*>;"
        }
    .end annotation
.end field

.field private asBinder:I

.field private asInterface:Ljava/io/File;

.field private extraCallback:I

.field private final onMessageChannelReady:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/AppCompatImageHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:Lo/compatMeasureContentWidth$onNavigationEvent;

.field private onPostMessage:Lo/AppCompatImageHelper;

.field private onRelationshipValidationResult:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/setNavigationContentDescription<",
            "Ljava/io/File;",
            "*>;>;"
        }
    .end annotation
.end field

.field private volatile onTransact:Lo/setNavigationContentDescription$ICustomTabsCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setNavigationContentDescription$ICustomTabsCallback<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Lo/getLastBaselineToBottomHeight;Lo/compatMeasureContentWidth$onNavigationEvent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/AppCompatImageHelper;",
            ">;",
            "Lo/getLastBaselineToBottomHeight<",
            "*>;",
            "Lo/compatMeasureContentWidth$onNavigationEvent;",
            ")V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 22
    iput v0, p0, Lo/AppCompatTextView;->extraCallback:I

    .line 39
    iput-object p1, p0, Lo/AppCompatTextView;->onMessageChannelReady:Ljava/util/List;

    .line 40
    iput-object p2, p0, Lo/AppCompatTextView;->ICustomTabsCallback:Lo/getLastBaselineToBottomHeight;

    .line 41
    iput-object p3, p0, Lo/AppCompatTextView;->onNavigationEvent:Lo/compatMeasureContentWidth$onNavigationEvent;

    return-void
.end method

.method constructor <init>(Lo/getLastBaselineToBottomHeight;Lo/compatMeasureContentWidth$onNavigationEvent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getLastBaselineToBottomHeight<",
            "*>;",
            "Lo/compatMeasureContentWidth$onNavigationEvent;",
            ")V"
        }
    .end annotation

    .line 33
    invoke-virtual {p1}, Lo/getLastBaselineToBottomHeight;->ICustomTabsCallback()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lo/AppCompatTextView;-><init>(Ljava/util/List;Lo/getLastBaselineToBottomHeight;Lo/compatMeasureContentWidth$onNavigationEvent;)V

    return-void
.end method


# virtual methods
.method public final extraCallback()V
    .locals 1

    .line 86
    iget-object v0, p0, Lo/AppCompatTextView;->onTransact:Lo/setNavigationContentDescription$ICustomTabsCallback;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, v0, Lo/setNavigationContentDescription$ICustomTabsCallback;->onNavigationEvent:Lo/AppCompatImageView;

    invoke-interface {v0}, Lo/AppCompatImageView;->ICustomTabsCallback()V

    :cond_0
    return-void
.end method

.method public final extraCallback(Ljava/lang/Exception;)V
    .locals 4

    .line 99
    iget-object v0, p0, Lo/AppCompatTextView;->onNavigationEvent:Lo/compatMeasureContentWidth$onNavigationEvent;

    iget-object v1, p0, Lo/AppCompatTextView;->onPostMessage:Lo/AppCompatImageHelper;

    iget-object v2, p0, Lo/AppCompatTextView;->onTransact:Lo/setNavigationContentDescription$ICustomTabsCallback;

    iget-object v2, v2, Lo/setNavigationContentDescription$ICustomTabsCallback;->onNavigationEvent:Lo/AppCompatImageView;

    sget-object v3, Lo/setImageURI;->onMessageChannelReady:Lo/setImageURI;

    invoke-interface {v0, v1, p1, v2, v3}, Lo/compatMeasureContentWidth$onNavigationEvent;->extraCallback(Lo/AppCompatImageHelper;Ljava/lang/Exception;Lo/AppCompatImageView;Lo/setImageURI;)V

    return-void
.end method

.method public final onNavigationEvent(Ljava/lang/Object;)V
    .locals 6

    .line 94
    iget-object v0, p0, Lo/AppCompatTextView;->onNavigationEvent:Lo/compatMeasureContentWidth$onNavigationEvent;

    iget-object v1, p0, Lo/AppCompatTextView;->onPostMessage:Lo/AppCompatImageHelper;

    iget-object v2, p0, Lo/AppCompatTextView;->onTransact:Lo/setNavigationContentDescription$ICustomTabsCallback;

    iget-object v3, v2, Lo/setNavigationContentDescription$ICustomTabsCallback;->onNavigationEvent:Lo/AppCompatImageView;

    sget-object v4, Lo/setImageURI;->onMessageChannelReady:Lo/setImageURI;

    iget-object v5, p0, Lo/AppCompatTextView;->onPostMessage:Lo/AppCompatImageHelper;

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lo/compatMeasureContentWidth$onNavigationEvent;->onPostMessage(Lo/AppCompatImageHelper;Ljava/lang/Object;Lo/AppCompatImageView;Lo/setImageURI;Lo/AppCompatImageHelper;)V

    return-void
.end method

.method public final onNavigationEvent()Z
    .locals 8

    .line 46
    :cond_0
    :goto_0
    iget-object v0, p0, Lo/AppCompatTextView;->onRelationshipValidationResult:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_7

    .line 1081
    iget v3, p0, Lo/AppCompatTextView;->asBinder:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    goto :goto_5

    :cond_2
    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lo/AppCompatTextView;->onTransact:Lo/setNavigationContentDescription$ICustomTabsCallback;

    const/4 v0, 0x0

    :cond_3
    :goto_2
    if-nez v0, :cond_6

    .line 4081
    iget v3, p0, Lo/AppCompatTextView;->asBinder:I

    iget-object v4, p0, Lo/AppCompatTextView;->onRelationshipValidationResult:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    const/4 v3, 0x1

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    :goto_3
    if-eqz v3, :cond_6

    .line 68
    iget-object v3, p0, Lo/AppCompatTextView;->onRelationshipValidationResult:Ljava/util/List;

    iget v4, p0, Lo/AppCompatTextView;->asBinder:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lo/AppCompatTextView;->asBinder:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/setNavigationContentDescription;

    .line 69
    iget-object v4, p0, Lo/AppCompatTextView;->asInterface:Ljava/io/File;

    iget-object v5, p0, Lo/AppCompatTextView;->ICustomTabsCallback:Lo/getLastBaselineToBottomHeight;

    .line 4115
    iget v5, v5, Lo/getLastBaselineToBottomHeight;->onNavigationEvent:I

    .line 71
    iget-object v6, p0, Lo/AppCompatTextView;->ICustomTabsCallback:Lo/getLastBaselineToBottomHeight;

    .line 4119
    iget v6, v6, Lo/getLastBaselineToBottomHeight;->onTransact:I

    .line 71
    iget-object v7, p0, Lo/AppCompatTextView;->ICustomTabsCallback:Lo/getLastBaselineToBottomHeight;

    .line 5107
    iget-object v7, v7, Lo/getLastBaselineToBottomHeight;->ICustomTabsCallback$Stub:Lo/applyFrameworkTintUsingColorFilter;

    .line 70
    invoke-interface {v3, v4, v5, v6, v7}, Lo/setNavigationContentDescription;->extraCallback(Ljava/lang/Object;IILo/applyFrameworkTintUsingColorFilter;)Lo/setNavigationContentDescription$ICustomTabsCallback;

    move-result-object v3

    iput-object v3, p0, Lo/AppCompatTextView;->onTransact:Lo/setNavigationContentDescription$ICustomTabsCallback;

    .line 72
    iget-object v3, p0, Lo/AppCompatTextView;->onTransact:Lo/setNavigationContentDescription$ICustomTabsCallback;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lo/AppCompatTextView;->ICustomTabsCallback:Lo/getLastBaselineToBottomHeight;

    iget-object v4, p0, Lo/AppCompatTextView;->onTransact:Lo/setNavigationContentDescription$ICustomTabsCallback;

    iget-object v4, v4, Lo/setNavigationContentDescription$ICustomTabsCallback;->onNavigationEvent:Lo/AppCompatImageView;

    invoke-interface {v4}, Lo/AppCompatImageView;->onNavigationEvent()Ljava/lang/Class;

    move-result-object v4

    .line 5145
    iget-object v5, v3, Lo/getLastBaselineToBottomHeight;->ICustomTabsCallback:Lo/tintDrawableUsingColorFilter;

    .line 6109
    iget-object v5, v5, Lo/tintDrawableUsingColorFilter;->onNavigationEvent:Lcom/bumptech/glide/Registry;

    .line 5145
    iget-object v6, v3, Lo/getLastBaselineToBottomHeight;->onRelationshipValidationResult:Ljava/lang/Class;

    iget-object v3, v3, Lo/getLastBaselineToBottomHeight;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/Class;

    invoke-virtual {v5, v4, v6, v3}, Lcom/bumptech/glide/Registry;->extraCallback(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lo/setCompoundDrawablesWithIntrinsicBounds;

    move-result-object v3

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    :goto_4
    if-eqz v3, :cond_3

    .line 74
    iget-object v0, p0, Lo/AppCompatTextView;->onTransact:Lo/setNavigationContentDescription$ICustomTabsCallback;

    iget-object v0, v0, Lo/setNavigationContentDescription$ICustomTabsCallback;->onNavigationEvent:Lo/AppCompatImageView;

    iget-object v3, p0, Lo/AppCompatTextView;->ICustomTabsCallback:Lo/getLastBaselineToBottomHeight;

    .line 7103
    iget-object v3, v3, Lo/getLastBaselineToBottomHeight;->warmup:Lo/getTintList;

    .line 74
    invoke-interface {v0, v3, p0}, Lo/AppCompatImageView;->onPostMessage(Lo/getTintList;Lo/AppCompatImageView$ICustomTabsCallback;)V

    const/4 v0, 0x1

    goto :goto_2

    :cond_6
    return v0

    .line 47
    :cond_7
    :goto_5
    iget v0, p0, Lo/AppCompatTextView;->extraCallback:I

    add-int/2addr v0, v2

    iput v0, p0, Lo/AppCompatTextView;->extraCallback:I

    .line 48
    iget-object v2, p0, Lo/AppCompatTextView;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_8

    return v1

    .line 52
    :cond_8
    iget-object v0, p0, Lo/AppCompatTextView;->onMessageChannelReady:Ljava/util/List;

    iget v2, p0, Lo/AppCompatTextView;->extraCallback:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/AppCompatImageHelper;

    .line 56
    new-instance v2, Lo/onRestoreInstanceState;

    iget-object v3, p0, Lo/AppCompatTextView;->ICustomTabsCallback:Lo/getLastBaselineToBottomHeight;

    .line 1111
    iget-object v3, v3, Lo/getLastBaselineToBottomHeight;->getInterfaceDescriptor:Lo/AppCompatImageHelper;

    .line 56
    invoke-direct {v2, v0, v3}, Lo/onRestoreInstanceState;-><init>(Lo/AppCompatImageHelper;Lo/AppCompatImageHelper;)V

    .line 57
    iget-object v3, p0, Lo/AppCompatTextView;->ICustomTabsCallback:Lo/getLastBaselineToBottomHeight;

    .line 2095
    iget-object v3, v3, Lo/getLastBaselineToBottomHeight;->asInterface:Lo/setLastBaselineToBottomHeight$ICustomTabsCallback;

    invoke-interface {v3}, Lo/setLastBaselineToBottomHeight$ICustomTabsCallback;->ICustomTabsCallback()Lo/ContentFrameLayout$OnAttachListener;

    move-result-object v3

    .line 57
    invoke-interface {v3, v2}, Lo/ContentFrameLayout$OnAttachListener;->onPostMessage(Lo/AppCompatImageHelper;)Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lo/AppCompatTextView;->asInterface:Ljava/io/File;

    if-eqz v2, :cond_0

    .line 59
    iput-object v0, p0, Lo/AppCompatTextView;->onPostMessage:Lo/AppCompatImageHelper;

    .line 60
    iget-object v0, p0, Lo/AppCompatTextView;->ICustomTabsCallback:Lo/getLastBaselineToBottomHeight;

    .line 2188
    iget-object v0, v0, Lo/getLastBaselineToBottomHeight;->ICustomTabsCallback:Lo/tintDrawableUsingColorFilter;

    .line 3109
    iget-object v0, v0, Lo/tintDrawableUsingColorFilter;->onNavigationEvent:Lcom/bumptech/glide/Registry;

    .line 2188
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/Registry;->onPostMessage(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 60
    iput-object v0, p0, Lo/AppCompatTextView;->onRelationshipValidationResult:Ljava/util/List;

    .line 61
    iput v1, p0, Lo/AppCompatTextView;->asBinder:I

    goto/16 :goto_0
.end method
