.class public final Lo/onRelationshipValidationResult;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/onRelationshipValidationResult$onNavigationEvent;,
        Lo/onRelationshipValidationResult$ICustomTabsCallback;,
        Lo/onRelationshipValidationResult$extraCallback;,
        Lo/onRelationshipValidationResult$onMessageChannelReady;
    }
.end annotation


# instance fields
.field private AudioAttributesCompatParcelizer:Landroid/os/Handler;

.field final ICustomTabsCallback:Lo/warmup;

.field ICustomTabsCallback$Stub:Landroid/view/View;

.field ICustomTabsCallback$Stub$Proxy:Ljava/lang/CharSequence;

.field ICustomTabsService:Ljava/lang/CharSequence;

.field ICustomTabsService$Stub:Landroid/graphics/drawable/Drawable;

.field ICustomTabsService$Stub$Proxy:Landroid/widget/ImageView;

.field INotificationSideChannel:Landroid/view/View;

.field INotificationSideChannel$Default:I

.field INotificationSideChannel$Stub:I

.field INotificationSideChannel$Stub$Proxy:I

.field IPostMessageService:Landroid/widget/TextView;

.field IPostMessageService$Stub:Landroid/widget/TextView;

.field IPostMessageService$Stub$Proxy:I

.field private IconCompatParcelizer:Landroid/os/Message;

.field private RemoteActionCompatParcelizer:Landroid/os/Message;

.field public asBinder:Landroid/widget/ListView;

.field asInterface:I

.field cancel:I

.field cancelAll:Landroid/widget/ListAdapter;

.field final extraCallback:Landroid/view/Window;

.field extraCommand:Lo/prepareFromUri;

.field getDefaultImpl:I

.field getInterfaceDescriptor:Landroid/graphics/drawable/Drawable;

.field mayLaunchUrl:Ljava/lang/CharSequence;

.field newSession:Landroid/widget/Button;

.field notify:I

.field final onMessageChannelReady:I

.field onNavigationEvent:Ljava/lang/CharSequence;

.field final onPostMessage:Landroid/content/Context;

.field onRelationshipValidationResult:Z

.field onTransact:Ljava/lang/CharSequence;

.field postMessage:Landroid/graphics/drawable/Drawable;

.field final read:Landroid/view/View$OnClickListener;

.field requestPostMessageChannel:Landroid/graphics/drawable/Drawable;

.field setDefaultImpl:Z

.field updateVisuals:Landroid/widget/Button;

.field validateRelationship:I

.field public warmup:Landroid/widget/Button;

.field private write:Landroid/os/Message;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/warmup;Landroid/view/Window;)V
    .locals 3

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Lo/onRelationshipValidationResult;->onRelationshipValidationResult:Z

    .line 101
    iput v0, p0, Lo/onRelationshipValidationResult;->validateRelationship:I

    const/4 v1, -0x1

    .line 111
    iput v1, p0, Lo/onRelationshipValidationResult;->cancel:I

    .line 126
    iput-object p0, p0, Lo/onRelationshipValidationResult;->read:Landroid/view/View$OnClickListener;

    .line 183
    iput-object p1, p0, Lo/onRelationshipValidationResult;->onPostMessage:Landroid/content/Context;

    .line 184
    iput-object p2, p0, Lo/onRelationshipValidationResult;->ICustomTabsCallback:Lo/warmup;

    .line 185
    iput-object p3, p0, Lo/onRelationshipValidationResult;->extraCallback:Landroid/view/Window;

    .line 186
    new-instance p3, Lo/onRelationshipValidationResult$onMessageChannelReady;

    invoke-direct {p3, p2}, Lo/onRelationshipValidationResult$onMessageChannelReady;-><init>(Landroid/content/DialogInterface;)V

    iput-object p3, p0, Lo/onRelationshipValidationResult;->AudioAttributesCompatParcelizer:Landroid/os/Handler;

    .line 188
    sget-object p3, Lo/extraCallback$asInterface;->AlertDialog:[I

    sget v1, Lo/extraCallback$ICustomTabsCallback;->alertDialogStyle:I

    const/4 v2, 0x0

    invoke-virtual {p1, v2, p3, v1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 191
    sget p3, Lo/extraCallback$asInterface;->AlertDialog_android_layout:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lo/onRelationshipValidationResult;->notify:I

    .line 192
    sget p3, Lo/extraCallback$asInterface;->AlertDialog_buttonPanelSideLayout:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lo/onRelationshipValidationResult;->IPostMessageService$Stub$Proxy:I

    .line 194
    sget p3, Lo/extraCallback$asInterface;->AlertDialog_listLayout:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lo/onRelationshipValidationResult;->INotificationSideChannel$Stub:I

    .line 195
    sget p3, Lo/extraCallback$asInterface;->AlertDialog_multiChoiceItemLayout:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lo/onRelationshipValidationResult;->INotificationSideChannel$Stub$Proxy:I

    .line 196
    sget p3, Lo/extraCallback$asInterface;->AlertDialog_singleChoiceItemLayout:I

    .line 197
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lo/onRelationshipValidationResult;->getDefaultImpl:I

    .line 198
    sget p3, Lo/extraCallback$asInterface;->AlertDialog_listItemLayout:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lo/onRelationshipValidationResult;->INotificationSideChannel$Default:I

    .line 199
    sget p3, Lo/extraCallback$asInterface;->AlertDialog_showTitle:I

    const/4 v1, 0x1

    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lo/onRelationshipValidationResult;->setDefaultImpl:Z

    .line 200
    sget p3, Lo/extraCallback$asInterface;->AlertDialog_buttonIconDimen:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lo/onRelationshipValidationResult;->onMessageChannelReady:I

    .line 202
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 205
    invoke-virtual {p2, v1}, Lo/warmup;->onPostMessage(I)Z

    return-void
.end method

.method static ICustomTabsCallback(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 2

    if-nez p0, :cond_1

    .line 443
    instance-of p0, p1, Landroid/view/ViewStub;

    if-eqz p0, :cond_0

    .line 444
    check-cast p1, Landroid/view/ViewStub;

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    .line 447
    :cond_0
    check-cast p1, Landroid/view/ViewGroup;

    return-object p1

    :cond_1
    if-eqz p1, :cond_2

    .line 452
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 453
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 454
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 459
    :cond_2
    instance-of p1, p0, Landroid/view/ViewStub;

    if-eqz p1, :cond_3

    .line 460
    check-cast p0, Landroid/view/ViewStub;

    invoke-virtual {p0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p0

    .line 463
    :cond_3
    check-cast p0, Landroid/view/ViewGroup;

    return-object p0
.end method

.method static onMessageChannelReady(Landroid/view/View;)Z
    .locals 4

    .line 209
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 213
    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 217
    :cond_1
    check-cast p0, Landroid/view/ViewGroup;

    .line 218
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :cond_2
    if-lez v0, :cond_3

    add-int/lit8 v0, v0, -0x1

    .line 221
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 222
    invoke-static {v3}, Lo/onRelationshipValidationResult;->onMessageChannelReady(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v1

    :cond_3
    return v2
.end method

.method static onNavigationEvent(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-eqz p1, :cond_1

    const/4 v2, -0x1

    .line 750
    invoke-virtual {p0, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    .line 749
    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    if-eqz p2, :cond_3

    const/4 p1, 0x1

    .line 754
    invoke-virtual {p0, p1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x4

    .line 753
    :goto_1
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-eqz p3, :cond_0

    .line 324
    iget-object p4, p0, Lo/onRelationshipValidationResult;->AudioAttributesCompatParcelizer:Landroid/os/Handler;

    invoke-virtual {p4, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    :cond_0
    const/4 p3, -0x3

    const/4 p5, 0x0

    if-eq p1, p3, :cond_3

    const/4 p3, -0x2

    if-eq p1, p3, :cond_2

    const/4 p3, -0x1

    if-ne p1, p3, :cond_1

    .line 330
    iput-object p2, p0, Lo/onRelationshipValidationResult;->ICustomTabsService:Ljava/lang/CharSequence;

    .line 331
    iput-object p4, p0, Lo/onRelationshipValidationResult;->write:Landroid/os/Message;

    .line 332
    iput-object p5, p0, Lo/onRelationshipValidationResult;->getInterfaceDescriptor:Landroid/graphics/drawable/Drawable;

    return-void

    .line 348
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Button does not exist"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 336
    :cond_2
    iput-object p2, p0, Lo/onRelationshipValidationResult;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/CharSequence;

    .line 337
    iput-object p4, p0, Lo/onRelationshipValidationResult;->RemoteActionCompatParcelizer:Landroid/os/Message;

    .line 338
    iput-object p5, p0, Lo/onRelationshipValidationResult;->postMessage:Landroid/graphics/drawable/Drawable;

    return-void

    .line 342
    :cond_3
    iput-object p2, p0, Lo/onRelationshipValidationResult;->mayLaunchUrl:Ljava/lang/CharSequence;

    .line 343
    iput-object p4, p0, Lo/onRelationshipValidationResult;->IconCompatParcelizer:Landroid/os/Message;

    .line 344
    iput-object p5, p0, Lo/onRelationshipValidationResult;->requestPostMessageChannel:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1130
    iget-object v0, p0, Lo/onRelationshipValidationResult;->warmup:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lo/onRelationshipValidationResult;->write:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 1131
    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    goto :goto_0

    .line 1132
    :cond_0
    iget-object v0, p0, Lo/onRelationshipValidationResult;->newSession:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lo/onRelationshipValidationResult;->RemoteActionCompatParcelizer:Landroid/os/Message;

    if-eqz v0, :cond_1

    .line 1133
    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    goto :goto_0

    .line 1134
    :cond_1
    iget-object v0, p0, Lo/onRelationshipValidationResult;->updateVisuals:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lo/onRelationshipValidationResult;->IconCompatParcelizer:Landroid/os/Message;

    if-eqz p1, :cond_2

    .line 1135
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 1141
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1145
    :cond_3
    iget-object p1, p0, Lo/onRelationshipValidationResult;->AudioAttributesCompatParcelizer:Landroid/os/Handler;

    const/4 v0, 0x1

    iget-object v1, p0, Lo/onRelationshipValidationResult;->ICustomTabsCallback:Lo/warmup;

    invoke-virtual {p1, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1146
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
