.class final Lo/setLastBaselineToBottomHeight$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setFirstBaselineToTopHeight$onPostMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setLastBaselineToBottomHeight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setFirstBaselineToTopHeight$onPostMessage<",
        "TZ;>;"
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/setLastBaselineToBottomHeight;

.field private final onPostMessage:Lo/setImageURI;


# direct methods
.method constructor <init>(Lo/setLastBaselineToBottomHeight;Lo/setImageURI;)V
    .locals 0

    .line 620
    iput-object p1, p0, Lo/setLastBaselineToBottomHeight$onNavigationEvent;->extraCallback:Lo/setLastBaselineToBottomHeight;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 621
    iput-object p2, p0, Lo/setLastBaselineToBottomHeight$onNavigationEvent;->onPostMessage:Lo/setImageURI;

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;)Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setCompoundDrawablesRelativeWithIntrinsicBounds<",
            "TZ;>;)",
            "Lo/setCompoundDrawablesRelativeWithIntrinsicBounds<",
            "TZ;>;"
        }
    .end annotation

    .line 627
    iget-object v0, p0, Lo/setLastBaselineToBottomHeight$onNavigationEvent;->extraCallback:Lo/setLastBaselineToBottomHeight;

    iget-object v1, p0, Lo/setLastBaselineToBottomHeight$onNavigationEvent;->onPostMessage:Lo/setImageURI;

    .line 1558
    invoke-interface {p1}, Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;->onPostMessage()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    .line 1561
    sget-object v2, Lo/setImageURI;->onPostMessage:Lo/setImageURI;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    .line 1562
    iget-object v2, v0, Lo/setLastBaselineToBottomHeight;->onPostMessage:Lo/getLastBaselineToBottomHeight;

    invoke-virtual {v2, v10}, Lo/getLastBaselineToBottomHeight;->extraCallback(Ljava/lang/Class;)Lo/AppCompatRadioButton;

    move-result-object v2

    .line 1563
    iget-object v4, v0, Lo/setLastBaselineToBottomHeight;->ICustomTabsCallback:Lo/tintDrawableUsingColorFilter;

    iget v5, v0, Lo/setLastBaselineToBottomHeight;->onTransact:I

    iget v6, v0, Lo/setLastBaselineToBottomHeight;->onRelationshipValidationResult:I

    invoke-interface {v2, v4, p1, v5, v6}, Lo/AppCompatRadioButton;->extraCallback(Landroid/content/Context;Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;II)Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;

    move-result-object v4

    move-object v9, v2

    move-object v2, v4

    goto :goto_0

    :cond_0
    move-object v2, p1

    move-object v9, v3

    .line 1566
    :goto_0
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1567
    invoke-interface {p1}, Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;->onMessageChannelReady()V

    .line 1572
    :cond_1
    iget-object p1, v0, Lo/setLastBaselineToBottomHeight;->onPostMessage:Lo/getLastBaselineToBottomHeight;

    .line 2179
    iget-object p1, p1, Lo/getLastBaselineToBottomHeight;->ICustomTabsCallback:Lo/tintDrawableUsingColorFilter;

    .line 3109
    iget-object p1, p1, Lo/tintDrawableUsingColorFilter;->onNavigationEvent:Lcom/bumptech/glide/Registry;

    .line 3555
    iget-object p1, p1, Lcom/bumptech/glide/Registry;->extraCallback:Lo/layoutHorizontal;

    invoke-interface {v2}, Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;->extraCallback()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p1, v4}, Lo/layoutHorizontal;->onPostMessage(Ljava/lang/Class;)Lo/shouldApplyFrameworkTintUsingColorFilter;

    move-result-object p1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_4

    .line 1573
    iget-object p1, v0, Lo/setLastBaselineToBottomHeight;->onPostMessage:Lo/getLastBaselineToBottomHeight;

    .line 4183
    iget-object p1, p1, Lo/getLastBaselineToBottomHeight;->ICustomTabsCallback:Lo/tintDrawableUsingColorFilter;

    .line 5109
    iget-object p1, p1, Lo/tintDrawableUsingColorFilter;->onNavigationEvent:Lcom/bumptech/glide/Registry;

    .line 5561
    iget-object p1, p1, Lcom/bumptech/glide/Registry;->extraCallback:Lo/layoutHorizontal;

    invoke-interface {v2}, Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;->extraCallback()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1, v3}, Lo/layoutHorizontal;->onPostMessage(Ljava/lang/Class;)Lo/shouldApplyFrameworkTintUsingColorFilter;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1574
    iget-object p1, v0, Lo/setLastBaselineToBottomHeight;->getInterfaceDescriptor:Lo/applyFrameworkTintUsingColorFilter;

    invoke-interface {v3, p1}, Lo/shouldApplyFrameworkTintUsingColorFilter;->onMessageChannelReady(Lo/applyFrameworkTintUsingColorFilter;)Lo/getSupportImageTintMode;

    move-result-object p1

    goto :goto_2

    .line 5565
    :cond_3
    new-instance p1, Lcom/bumptech/glide/Registry$NoResultEncoderAvailableException;

    invoke-interface {v2}, Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;->extraCallback()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/bumptech/glide/Registry$NoResultEncoderAvailableException;-><init>(Ljava/lang/Class;)V

    throw p1

    .line 1577
    :cond_4
    sget-object p1, Lo/getSupportImageTintMode;->onMessageChannelReady:Lo/getSupportImageTintMode;

    :goto_2
    move-object v12, v3

    .line 1581
    iget-object v3, v0, Lo/setLastBaselineToBottomHeight;->onPostMessage:Lo/getLastBaselineToBottomHeight;

    iget-object v6, v0, Lo/setLastBaselineToBottomHeight;->updateVisuals:Lo/AppCompatImageHelper;

    .line 6192
    invoke-virtual {v3}, Lo/getLastBaselineToBottomHeight;->onMessageChannelReady()Ljava/util/List;

    move-result-object v3

    .line 6194
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v7, :cond_6

    .line 6195
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lo/setNavigationContentDescription$ICustomTabsCallback;

    .line 6196
    iget-object v11, v11, Lo/setNavigationContentDescription$ICustomTabsCallback;->onMessageChannelReady:Lo/AppCompatImageHelper;

    invoke-interface {v11, v6}, Lo/AppCompatImageHelper;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    const/4 v4, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    xor-int/lit8 v3, v4, 0x1

    .line 1582
    iget-object v4, v0, Lo/setLastBaselineToBottomHeight;->newSession:Lo/getFirstBaselineToTopHeight;

    invoke-virtual {v4, v3, v1, p1}, Lo/getFirstBaselineToTopHeight;->ICustomTabsCallback(ZLo/setImageURI;Lo/getSupportImageTintMode;)Z

    move-result v1

    if-eqz v1, :cond_a

    if-eqz v12, :cond_9

    .line 1588
    sget-object v1, Lo/setLastBaselineToBottomHeight$5;->onPostMessage:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v1, v1, v3

    if-eq v1, v5, :cond_8

    const/4 v3, 0x2

    if-ne v1, v3, :cond_7

    .line 1593
    new-instance p1, Lo/setCompoundDrawables;

    iget-object v1, v0, Lo/setLastBaselineToBottomHeight;->onPostMessage:Lo/getLastBaselineToBottomHeight;

    .line 7123
    iget-object v1, v1, Lo/getLastBaselineToBottomHeight;->ICustomTabsCallback:Lo/tintDrawableUsingColorFilter;

    .line 8118
    iget-object v4, v1, Lo/tintDrawableUsingColorFilter;->ICustomTabsCallback:Lo/ButtonBarLayout;

    .line 1595
    iget-object v5, v0, Lo/setLastBaselineToBottomHeight;->updateVisuals:Lo/AppCompatImageHelper;

    iget-object v6, v0, Lo/setLastBaselineToBottomHeight;->ICustomTabsCallback$Stub:Lo/AppCompatImageHelper;

    iget v7, v0, Lo/setLastBaselineToBottomHeight;->onTransact:I

    iget v8, v0, Lo/setLastBaselineToBottomHeight;->onRelationshipValidationResult:I

    iget-object v11, v0, Lo/setLastBaselineToBottomHeight;->getInterfaceDescriptor:Lo/applyFrameworkTintUsingColorFilter;

    move-object v3, p1

    invoke-direct/range {v3 .. v11}, Lo/setCompoundDrawables;-><init>(Lo/ButtonBarLayout;Lo/AppCompatImageHelper;Lo/AppCompatImageHelper;IILo/AppCompatRadioButton;Ljava/lang/Class;Lo/applyFrameworkTintUsingColorFilter;)V

    goto :goto_5

    .line 1605
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Unknown strategy: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1590
    :cond_8
    new-instance p1, Lo/onRestoreInstanceState;

    iget-object v1, v0, Lo/setLastBaselineToBottomHeight;->updateVisuals:Lo/AppCompatImageHelper;

    iget-object v3, v0, Lo/setLastBaselineToBottomHeight;->ICustomTabsCallback$Stub:Lo/AppCompatImageHelper;

    invoke-direct {p1, v1, v3}, Lo/onRestoreInstanceState;-><init>(Lo/AppCompatImageHelper;Lo/AppCompatImageHelper;)V

    .line 1608
    :goto_5
    invoke-static {v2}, Lo/setCompoundDrawablesRelative;->onMessageChannelReady(Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;)Lo/setCompoundDrawablesRelative;

    move-result-object v2

    .line 1609
    iget-object v0, v0, Lo/setLastBaselineToBottomHeight;->extraCallback:Lo/setLastBaselineToBottomHeight$onMessageChannelReady;

    .line 8683
    iput-object p1, v0, Lo/setLastBaselineToBottomHeight$onMessageChannelReady;->onMessageChannelReady:Lo/AppCompatImageHelper;

    .line 8684
    iput-object v12, v0, Lo/setLastBaselineToBottomHeight$onMessageChannelReady;->onNavigationEvent:Lo/shouldApplyFrameworkTintUsingColorFilter;

    .line 8685
    iput-object v2, v0, Lo/setLastBaselineToBottomHeight$onMessageChannelReady;->extraCallback:Lo/setCompoundDrawablesRelative;

    goto :goto_6

    .line 1585
    :cond_9
    new-instance p1, Lcom/bumptech/glide/Registry$NoResultEncoderAvailableException;

    invoke-interface {v2}, Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;->onPostMessage()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/bumptech/glide/Registry$NoResultEncoderAvailableException;-><init>(Ljava/lang/Class;)V

    throw p1

    :cond_a
    :goto_6
    return-object v2
.end method
