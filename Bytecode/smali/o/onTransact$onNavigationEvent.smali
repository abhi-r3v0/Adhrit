.class public Lo/onTransact$onNavigationEvent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onTransact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onNavigationEvent"
.end annotation


# instance fields
.field public final onMessageChannelReady:Lo/onRelationshipValidationResult$ICustomTabsCallback;

.field private final onPostMessage:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 313
    invoke-static {p1, v0}, Lo/onTransact;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lo/onTransact$onNavigationEvent;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 343
    new-instance v0, Lo/onRelationshipValidationResult$ICustomTabsCallback;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 344
    invoke-static {p1, p2}, Lo/onTransact;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Lo/onRelationshipValidationResult$ICustomTabsCallback;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lo/onTransact$onNavigationEvent;->onMessageChannelReady:Lo/onRelationshipValidationResult$ICustomTabsCallback;

    .line 345
    iput p2, p0, Lo/onTransact$onNavigationEvent;->onPostMessage:I

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady()Lo/onTransact;
    .locals 1

    .line 1008
    invoke-virtual {p0}, Lo/onTransact$onNavigationEvent;->onNavigationEvent()Lo/onTransact;

    move-result-object v0

    .line 1009
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-object v0
.end method

.method public final onNavigationEvent()Lo/onTransact;
    .locals 14

    .line 983
    new-instance v0, Lo/onTransact;

    iget-object v1, p0, Lo/onTransact$onNavigationEvent;->onMessageChannelReady:Lo/onRelationshipValidationResult$ICustomTabsCallback;

    iget-object v1, v1, Lo/onRelationshipValidationResult$ICustomTabsCallback;->onPostMessage:Landroid/content/Context;

    iget v2, p0, Lo/onTransact$onNavigationEvent;->onPostMessage:I

    invoke-direct {v0, v1, v2}, Lo/onTransact;-><init>(Landroid/content/Context;I)V

    .line 984
    iget-object v1, p0, Lo/onTransact$onNavigationEvent;->onMessageChannelReady:Lo/onRelationshipValidationResult$ICustomTabsCallback;

    iget-object v9, v0, Lo/onTransact;->extraCallback:Lo/onRelationshipValidationResult;

    .line 1931
    iget-object v2, v1, Lo/onRelationshipValidationResult$ICustomTabsCallback;->ICustomTabsCallback:Landroid/view/View;

    const/4 v10, 0x0

    if-eqz v2, :cond_0

    .line 1932
    iget-object v2, v1, Lo/onRelationshipValidationResult$ICustomTabsCallback;->ICustomTabsCallback:Landroid/view/View;

    .line 2257
    iput-object v2, v9, Lo/onRelationshipValidationResult;->INotificationSideChannel:Landroid/view/View;

    goto :goto_0

    .line 1934
    :cond_0
    iget-object v2, v1, Lo/onRelationshipValidationResult$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    .line 1935
    iget-object v2, v1, Lo/onRelationshipValidationResult$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/CharSequence;

    .line 3247
    iput-object v2, v9, Lo/onRelationshipValidationResult;->onNavigationEvent:Ljava/lang/CharSequence;

    .line 3248
    iget-object v3, v9, Lo/onRelationshipValidationResult;->IPostMessageService:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 3249
    iget-object v3, v9, Lo/onRelationshipValidationResult;->IPostMessageService:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1937
    :cond_1
    iget-object v2, v1, Lo/onRelationshipValidationResult$ICustomTabsCallback;->extraCallback:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    .line 1938
    iget-object v2, v1, Lo/onRelationshipValidationResult$ICustomTabsCallback;->extraCallback:Landroid/graphics/drawable/Drawable;

    .line 3378
    iput-object v2, v9, Lo/onRelationshipValidationResult;->ICustomTabsService$Stub:Landroid/graphics/drawable/Drawable;

    .line 3379
    iput v10, v9, Lo/onRelationshipValidationResult;->validateRelationship:I

    .line 3381
    iget-object v3, v9, Lo/onRelationshipValidationResult;->ICustomTabsService$Stub$Proxy:Landroid/widget/ImageView;

    if-eqz v3, :cond_3

    if-eqz v2, :cond_2

    .line 3383
    iget-object v3, v9, Lo/onRelationshipValidationResult;->ICustomTabsService$Stub$Proxy:Landroid/widget/ImageView;

    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3384
    iget-object v3, v9, Lo/onRelationshipValidationResult;->ICustomTabsService$Stub$Proxy:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 3386
    :cond_2
    iget-object v2, v9, Lo/onRelationshipValidationResult;->ICustomTabsService$Stub$Proxy:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1947
    :cond_3
    :goto_0
    iget-object v2, v1, Lo/onRelationshipValidationResult$ICustomTabsCallback;->onTransact:Ljava/lang/CharSequence;

    if-eqz v2, :cond_4

    .line 1948
    iget-object v2, v1, Lo/onRelationshipValidationResult$ICustomTabsCallback;->onTransact:Ljava/lang/CharSequence;

    .line 4261
    iput-object v2, v9, Lo/onRelationshipValidationResult;->onTransact:Ljava/lang/CharSequence;

    .line 4262
    iget-object v3, v9, Lo/onRelationshipValidationResult;->IPostMessageService$Stub:Landroid/widget/TextView;

    if-eqz v3, :cond_4

    .line 4263
    iget-object v3, v9, Lo/onRelationshipValidationResult;->IPostMessageService$Stub:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1950
    :cond_4
    iget-object v2, v1, Lo/onRelationshipValidationResult$ICustomTabsCallback;->asInterface:Ljava/lang/CharSequence;

    if-eqz v2, :cond_5

    const/4 v3, -0x1

    .line 1951
    iget-object v4, v1, Lo/onRelationshipValidationResult$ICustomTabsCallback;->asInterface:Ljava/lang/CharSequence;

    iget-object v5, v1, Lo/onRelationshipValidationResult$ICustomTabsCallback;->ICustomTabsCallback$Stub:Landroid/content/DialogInterface$OnClickListener;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v9

    invoke-virtual/range {v2 .. v7}, Lo/onRelationshipValidationResult;->ICustomTabsCallback(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V

    .line 1954
    :cond_5
    iget-object v2, v1, Lo/onRelationshipValidationResult$ICustomTabsCallback;->asBinder:Ljava/lang/CharSequence;

    if-eqz v2, :cond_6

    const/4 v3, -0x2

    .line 1955
    iget-object v4, v1, Lo/onRelationshipValidationResult$ICustomTabsCallback;->asBinder:Ljava/lang/CharSequence;

    iget-object v5, v1, Lo/onRelationshipValidationResult$ICustomTabsCallback;->onRelationshipValidationResult:Landroid/content/DialogInterface$OnClickListener;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v9

    invoke-virtual/range {v2 .. v7}, Lo/onRelationshipValidationResult;->ICustomTabsCallback(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V

    .line 1964
    :cond_6
    iget-object v2, v1, Lo/onRelationshipValidationResult$ICustomTabsCallback;->getInterfaceDescriptor:[Ljava/lang/CharSequence;

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-nez v2, :cond_7

    iget-object v2, v1, Lo/onRelationshipValidationResult$ICustomTabsCallback;->newSession:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_f

    .line 4988
    :cond_7
    iget-object v2, v1, Lo/onRelationshipValidationResult$ICustomTabsCallback;->onMessageChannelReady:Landroid/view/LayoutInflater;

    iget v3, v9, Lo/onRelationshipValidationResult;->INotificationSideChannel$Stub:I

    .line 4989
    invoke-virtual {v2, v3, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/onRelationshipValidationResult$extraCallback;

    .line 4992
    iget-boolean v3, v1, Lo/onRelationshipValidationResult$ICustomTabsCallback;->postMessage:Z

    if-eqz v3, :cond_8

    .line 4994
    new-instance v13, Lo/onRelationshipValidationResult$ICustomTabsCallback$5;

    iget-object v5, v1, Lo/onRelationshipValidationResult$ICustomTabsCallback;->onPostMessage:Landroid/content/Context;

    iget v6, v9, Lo/onRelationshipValidationResult;->INotificationSideChannel$Stub$Proxy:I

    iget-object v7, v1, Lo/onRelationshipValidationResult$ICustomTabsCallback;->getInterfaceDescriptor:[Ljava/lang/CharSequence;

    move-object v3, v13

    move-object v4, v1

    move-object v8, v2

    invoke-direct/range {v3 .. v8}, Lo/onRelationshipValidationResult$ICustomTabsCallback$5;-><init>(Lo/onRelationshipValidationResult$ICustomTabsCallback;Landroid/content/Context;I[Ljava/lang/CharSequence;Lo/onRelationshipValidationResult$extraCallback;)V

    goto :goto_2

    .line 5038
    :cond_8
    iget-boolean v3, v1, Lo/onRelationshipValidationResult$ICustomTabsCallback;->updateVisuals:Z

    if-eqz v3, :cond_9

    .line 5039
    iget v3, v9, Lo/onRelationshipValidationResult;->getDefaultImpl:I

    goto :goto_1

    .line 5041
    :cond_9
    iget v3, v9, Lo/onRelationshipValidationResult;->INotificationSideChannel$Default:I

    .line 5047
    :goto_1
    iget-object v4, v1, Lo/onRelationshipValidationResult$ICustomTabsCallback;->newSession:Landroid/widget/ListAdapter;

    if-eqz v4, :cond_a

    .line 5048
    iget-object v13, v1, Lo/onRelationshipValidationResult$ICustomTabsCallback;->newSession:Landroid/widget/ListAdapter;

    goto :goto_2

    .line 5050
    :cond_a
    new-instance v13, Lo/onRelationshipValidationResult$onNavigationEvent;

    iget-object v4, v1, Lo/onRelationshipValidationResult$ICustomTabsCallback;->onPostMessage:Landroid/content/Context;

    iget-object v5, v1, Lo/onRelationshipValidationResult$ICustomTabsCallback;->getInterfaceDescriptor:[Ljava/lang/CharSequence;

    invoke-direct {v13, v4, v3, v5}, Lo/onRelationshipValidationResult$onNavigationEvent;-><init>(Landroid/content/Context;I[Ljava/lang/CharSequence;)V

    .line 5061
    :goto_2
    iput-object v13, v9, Lo/onRelationshipValidationResult;->cancelAll:Landroid/widget/ListAdapter;

    .line 5062
    iget v3, v1, Lo/onRelationshipValidationResult$ICustomTabsCallback;->ICustomTabsService$Stub$Proxy:I

    iput v3, v9, Lo/onRelationshipValidationResult;->cancel:I

    .line 5064
    iget-object v3, v1, Lo/onRelationshipValidationResult$ICustomTabsCallback;->requestPostMessageChannel:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v3, :cond_b

    .line 5065
    new-instance v3, Lo/onRelationshipValidationResult$ICustomTabsCallback$1;

    invoke-direct {v3, v1, v9}, Lo/onRelationshipValidationResult$ICustomTabsCallback$1;-><init>(Lo/onRelationshipValidationResult$ICustomTabsCallback;Lo/onRelationshipValidationResult;)V

    invoke-virtual {v2, v3}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_3

    .line 5074
    :cond_b
    iget-object v3, v1, Lo/onRelationshipValidationResult$ICustomTabsCallback;->ICustomTabsService$Stub:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v3, :cond_c

    .line 5075
    new-instance v3, Lo/onRelationshipValidationResult$ICustomTabsCallback$2;

    invoke-direct {v3, v1, v2, v9}, Lo/onRelationshipValidationResult$ICustomTabsCallback$2;-><init>(Lo/onRelationshipValidationResult$ICustomTabsCallback;Lo/onRelationshipValidationResult$extraCallback;Lo/onRelationshipValidationResult;)V

    invoke-virtual {v2, v3}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 5092
    :cond_c
    :goto_3
    iget-boolean v3, v1, Lo/onRelationshipValidationResult$ICustomTabsCallback;->updateVisuals:Z

    if-eqz v3, :cond_d

    .line 5093
    invoke-virtual {v2, v11}, Lo/onRelationshipValidationResult$extraCallback;->setChoiceMode(I)V

    goto :goto_4

    .line 5094
    :cond_d
    iget-boolean v3, v1, Lo/onRelationshipValidationResult$ICustomTabsCallback;->postMessage:Z

    if-eqz v3, :cond_e

    const/4 v3, 0x2

    .line 5095
    invoke-virtual {v2, v3}, Lo/onRelationshipValidationResult$extraCallback;->setChoiceMode(I)V

    .line 5097
    :cond_e
    :goto_4
    iput-object v2, v9, Lo/onRelationshipValidationResult;->asBinder:Landroid/widget/ListView;

    .line 1967
    :cond_f
    iget-object v2, v1, Lo/onRelationshipValidationResult$ICustomTabsCallback;->extraCommand:Landroid/view/View;

    if-eqz v2, :cond_10

    .line 1972
    iget-object v1, v1, Lo/onRelationshipValidationResult$ICustomTabsCallback;->extraCommand:Landroid/view/View;

    .line 5280
    iput-object v1, v9, Lo/onRelationshipValidationResult;->ICustomTabsCallback$Stub:Landroid/view/View;

    .line 5281
    iput v10, v9, Lo/onRelationshipValidationResult;->asInterface:I

    .line 5282
    iput-boolean v10, v9, Lo/onRelationshipValidationResult;->onRelationshipValidationResult:Z

    .line 985
    :cond_10
    iget-object v1, p0, Lo/onTransact$onNavigationEvent;->onMessageChannelReady:Lo/onRelationshipValidationResult$ICustomTabsCallback;

    iget-boolean v1, v1, Lo/onRelationshipValidationResult$ICustomTabsCallback;->ICustomTabsService:Z

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 986
    iget-object v1, p0, Lo/onTransact$onNavigationEvent;->onMessageChannelReady:Lo/onRelationshipValidationResult$ICustomTabsCallback;

    iget-boolean v1, v1, Lo/onRelationshipValidationResult$ICustomTabsCallback;->ICustomTabsService:Z

    if-eqz v1, :cond_11

    .line 987
    invoke-virtual {v0, v11}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 989
    :cond_11
    iget-object v1, p0, Lo/onTransact$onNavigationEvent;->onMessageChannelReady:Lo/onRelationshipValidationResult$ICustomTabsCallback;

    iget-object v1, v1, Lo/onRelationshipValidationResult$ICustomTabsCallback;->warmup:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 990
    invoke-virtual {v0, v12}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 991
    iget-object v1, p0, Lo/onTransact$onNavigationEvent;->onMessageChannelReady:Lo/onRelationshipValidationResult$ICustomTabsCallback;

    iget-object v1, v1, Lo/onRelationshipValidationResult$ICustomTabsCallback;->ICustomTabsCallback$Stub$Proxy:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_12

    .line 992
    iget-object v1, p0, Lo/onTransact$onNavigationEvent;->onMessageChannelReady:Lo/onRelationshipValidationResult$ICustomTabsCallback;

    iget-object v1, v1, Lo/onRelationshipValidationResult$ICustomTabsCallback;->ICustomTabsCallback$Stub$Proxy:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_12
    return-object v0
.end method
