.class abstract Lo/IPostMessageService$Stub$onNavigationEvent;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/IPostMessageService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "onNavigationEvent"
.end annotation


# instance fields
.field AudioAttributesCompatParcelizer:Z

.field ICustomTabsCallback$Stub:I

.field ICustomTabsCallback$Stub$Proxy:Z

.field ICustomTabsService:Z

.field ICustomTabsService$Stub:Z

.field ICustomTabsService$Stub$Proxy:I

.field INotificationSideChannel:I

.field INotificationSideChannel$Default:Z

.field INotificationSideChannel$Stub:Landroid/graphics/ColorFilter;

.field INotificationSideChannel$Stub$Proxy:Z

.field IPostMessageService:Z

.field IPostMessageService$Stub:Z

.field IPostMessageService$Stub$Proxy:Z

.field RemoteActionCompatParcelizer:Z

.field asBinder:I

.field asInterface:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field cancel:I

.field cancelAll:Z

.field extraCallback:I

.field extraCommand:I

.field getDefaultImpl:Landroid/graphics/PorterDuff$Mode;

.field getInterfaceDescriptor:Z

.field mayLaunchUrl:Z

.field newSession:Landroid/graphics/Rect;

.field notify:I

.field onNavigationEvent:Landroid/content/res/Resources;

.field final onPostMessage:Lo/IPostMessageService$Stub;

.field onRelationshipValidationResult:I

.field onTransact:[Landroid/graphics/drawable/Drawable;

.field postMessage:I

.field requestPostMessageChannel:I

.field setDefaultImpl:Landroid/content/res/ColorStateList;

.field updateVisuals:I

.field validateRelationship:Z

.field warmup:Z


# direct methods
.method constructor <init>(Lo/IPostMessageService$Stub$onNavigationEvent;Lo/IPostMessageService$Stub;Landroid/content/res/Resources;)V
    .locals 2

    .line 682
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/16 v0, 0xa0

    .line 647
    iput v0, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->extraCallback:I

    const/4 v0, 0x0

    .line 653
    iput-boolean v0, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->ICustomTabsCallback$Stub$Proxy:Z

    .line 656
    iput-boolean v0, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->getInterfaceDescriptor:Z

    const/4 v1, 0x1

    .line 668
    iput-boolean v1, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->cancelAll:Z

    .line 671
    iput v0, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->cancel:I

    .line 672
    iput v0, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->INotificationSideChannel:I

    .line 683
    iput-object p2, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->onPostMessage:Lo/IPostMessageService$Stub;

    if-eqz p3, :cond_0

    move-object p2, p3

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 684
    iget-object p2, p1, Lo/IPostMessageService$Stub$onNavigationEvent;->onNavigationEvent:Landroid/content/res/Resources;

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    iput-object p2, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->onNavigationEvent:Landroid/content/res/Resources;

    if-eqz p1, :cond_2

    .line 685
    iget p2, p1, Lo/IPostMessageService$Stub$onNavigationEvent;->extraCallback:I

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    invoke-static {p3, p2}, Lo/IPostMessageService$Stub;->onPostMessage(Landroid/content/res/Resources;I)I

    move-result p2

    iput p2, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->extraCallback:I

    if-eqz p1, :cond_b

    .line 687
    iget p3, p1, Lo/IPostMessageService$Stub$onNavigationEvent;->asBinder:I

    iput p3, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->asBinder:I

    .line 688
    iget p3, p1, Lo/IPostMessageService$Stub$onNavigationEvent;->onRelationshipValidationResult:I

    iput p3, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->onRelationshipValidationResult:I

    .line 689
    iput-boolean v1, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->ICustomTabsService$Stub:Z

    .line 690
    iput-boolean v1, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->IPostMessageService$Stub:Z

    .line 691
    iget-boolean p3, p1, Lo/IPostMessageService$Stub$onNavigationEvent;->ICustomTabsCallback$Stub$Proxy:Z

    iput-boolean p3, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->ICustomTabsCallback$Stub$Proxy:Z

    .line 692
    iget-boolean p3, p1, Lo/IPostMessageService$Stub$onNavigationEvent;->getInterfaceDescriptor:Z

    iput-boolean p3, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->getInterfaceDescriptor:Z

    .line 693
    iget-boolean p3, p1, Lo/IPostMessageService$Stub$onNavigationEvent;->cancelAll:Z

    iput-boolean p3, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->cancelAll:Z

    .line 694
    iget-boolean p3, p1, Lo/IPostMessageService$Stub$onNavigationEvent;->IPostMessageService$Stub$Proxy:Z

    iput-boolean p3, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->IPostMessageService$Stub$Proxy:Z

    .line 695
    iget p3, p1, Lo/IPostMessageService$Stub$onNavigationEvent;->notify:I

    iput p3, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->notify:I

    .line 696
    iget p3, p1, Lo/IPostMessageService$Stub$onNavigationEvent;->cancel:I

    iput p3, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->cancel:I

    .line 697
    iget p3, p1, Lo/IPostMessageService$Stub$onNavigationEvent;->INotificationSideChannel:I

    iput p3, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->INotificationSideChannel:I

    .line 698
    iget-boolean p3, p1, Lo/IPostMessageService$Stub$onNavigationEvent;->INotificationSideChannel$Default:Z

    iput-boolean p3, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->INotificationSideChannel$Default:Z

    .line 699
    iget-object p3, p1, Lo/IPostMessageService$Stub$onNavigationEvent;->INotificationSideChannel$Stub:Landroid/graphics/ColorFilter;

    iput-object p3, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->INotificationSideChannel$Stub:Landroid/graphics/ColorFilter;

    .line 700
    iget-boolean p3, p1, Lo/IPostMessageService$Stub$onNavigationEvent;->INotificationSideChannel$Stub$Proxy:Z

    iput-boolean p3, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->INotificationSideChannel$Stub$Proxy:Z

    .line 701
    iget-object p3, p1, Lo/IPostMessageService$Stub$onNavigationEvent;->setDefaultImpl:Landroid/content/res/ColorStateList;

    iput-object p3, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->setDefaultImpl:Landroid/content/res/ColorStateList;

    .line 702
    iget-object p3, p1, Lo/IPostMessageService$Stub$onNavigationEvent;->getDefaultImpl:Landroid/graphics/PorterDuff$Mode;

    iput-object p3, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->getDefaultImpl:Landroid/graphics/PorterDuff$Mode;

    .line 703
    iget-boolean p3, p1, Lo/IPostMessageService$Stub$onNavigationEvent;->RemoteActionCompatParcelizer:Z

    iput-boolean p3, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->RemoteActionCompatParcelizer:Z

    .line 704
    iget-boolean p3, p1, Lo/IPostMessageService$Stub$onNavigationEvent;->AudioAttributesCompatParcelizer:Z

    iput-boolean p3, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->AudioAttributesCompatParcelizer:Z

    .line 705
    iget p3, p1, Lo/IPostMessageService$Stub$onNavigationEvent;->extraCallback:I

    if-ne p3, p2, :cond_4

    .line 706
    iget-boolean p2, p1, Lo/IPostMessageService$Stub$onNavigationEvent;->ICustomTabsService:Z

    if-eqz p2, :cond_3

    .line 707
    new-instance p2, Landroid/graphics/Rect;

    iget-object p3, p1, Lo/IPostMessageService$Stub$onNavigationEvent;->newSession:Landroid/graphics/Rect;

    invoke-direct {p2, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object p2, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->newSession:Landroid/graphics/Rect;

    .line 708
    iput-boolean v1, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->ICustomTabsService:Z

    .line 710
    :cond_3
    iget-boolean p2, p1, Lo/IPostMessageService$Stub$onNavigationEvent;->warmup:Z

    if-eqz p2, :cond_4

    .line 711
    iget p2, p1, Lo/IPostMessageService$Stub$onNavigationEvent;->postMessage:I

    iput p2, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->postMessage:I

    .line 712
    iget p2, p1, Lo/IPostMessageService$Stub$onNavigationEvent;->requestPostMessageChannel:I

    iput p2, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->requestPostMessageChannel:I

    .line 713
    iget p2, p1, Lo/IPostMessageService$Stub$onNavigationEvent;->extraCommand:I

    iput p2, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->extraCommand:I

    .line 714
    iget p2, p1, Lo/IPostMessageService$Stub$onNavigationEvent;->updateVisuals:I

    iput p2, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->updateVisuals:I

    .line 715
    iput-boolean v1, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->warmup:Z

    .line 718
    :cond_4
    iget-boolean p2, p1, Lo/IPostMessageService$Stub$onNavigationEvent;->mayLaunchUrl:Z

    if-eqz p2, :cond_5

    .line 719
    iget p2, p1, Lo/IPostMessageService$Stub$onNavigationEvent;->ICustomTabsService$Stub$Proxy:I

    iput p2, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->ICustomTabsService$Stub$Proxy:I

    .line 720
    iput-boolean v1, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->mayLaunchUrl:Z

    .line 722
    :cond_5
    iget-boolean p2, p1, Lo/IPostMessageService$Stub$onNavigationEvent;->IPostMessageService:Z

    if-eqz p2, :cond_6

    .line 723
    iget-boolean p2, p1, Lo/IPostMessageService$Stub$onNavigationEvent;->validateRelationship:Z

    iput-boolean p2, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->validateRelationship:Z

    .line 724
    iput-boolean v1, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->IPostMessageService:Z

    .line 728
    :cond_6
    iget-object p2, p1, Lo/IPostMessageService$Stub$onNavigationEvent;->onTransact:[Landroid/graphics/drawable/Drawable;

    .line 729
    array-length p3, p2

    new-array p3, p3, [Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->onTransact:[Landroid/graphics/drawable/Drawable;

    .line 730
    iget p3, p1, Lo/IPostMessageService$Stub$onNavigationEvent;->ICustomTabsCallback$Stub:I

    iput p3, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->ICustomTabsCallback$Stub:I

    .line 731
    iget-object p1, p1, Lo/IPostMessageService$Stub$onNavigationEvent;->asInterface:Landroid/util/SparseArray;

    if-eqz p1, :cond_7

    .line 733
    invoke-virtual {p1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object p1

    iput-object p1, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->asInterface:Landroid/util/SparseArray;

    goto :goto_2

    .line 735
    :cond_7
    new-instance p1, Landroid/util/SparseArray;

    iget p3, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->ICustomTabsCallback$Stub:I

    invoke-direct {p1, p3}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p1, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->asInterface:Landroid/util/SparseArray;

    .line 740
    :goto_2
    iget p1, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->ICustomTabsCallback$Stub:I

    :goto_3
    if-ge v0, p1, :cond_a

    .line 742
    aget-object p3, p2, v0

    if-eqz p3, :cond_9

    .line 743
    aget-object p3, p2, v0

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p3

    if-eqz p3, :cond_8

    .line 745
    iget-object v1, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->asInterface:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_4

    .line 747
    :cond_8
    iget-object p3, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->onTransact:[Landroid/graphics/drawable/Drawable;

    aget-object v1, p2, v0

    aput-object v1, p3, v0

    :cond_9
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_a
    return-void

    :cond_b
    const/16 p1, 0xa

    new-array p1, p1, [Landroid/graphics/drawable/Drawable;

    .line 752
    iput-object p1, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->onTransact:[Landroid/graphics/drawable/Drawable;

    .line 753
    iput v0, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->ICustomTabsCallback$Stub:I

    return-void
.end method

.method private getInterfaceDescriptor()V
    .locals 6

    .line 800
    iget-object v0, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->asInterface:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    .line 801
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 803
    iget-object v2, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->asInterface:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 804
    iget-object v3, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->asInterface:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 805
    iget-object v4, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->onTransact:[Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->onNavigationEvent:Landroid/content/res/Resources;

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {p0, v3}, Lo/IPostMessageService$Stub$onNavigationEvent;->onNavigationEvent(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v4, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 807
    iput-object v0, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->asInterface:Landroid/util/SparseArray;

    :cond_1
    return-void
.end method

.method private onNavigationEvent(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 812
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 813
    iget v0, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->notify:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 815
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 816
    iget-object v0, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->onPostMessage:Lo/IPostMessageService$Stub;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-object p1
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroid/graphics/drawable/Drawable;)I
    .locals 4

    .line 769
    iget v0, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->ICustomTabsCallback$Stub:I

    .line 770
    iget-object v1, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->onTransact:[Landroid/graphics/drawable/Drawable;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    add-int/lit8 v1, v0, 0xa

    .line 771
    invoke-virtual {p0, v0, v1}, Lo/IPostMessageService$Stub$onNavigationEvent;->onNavigationEvent(II)V

    .line 773
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 774
    invoke-virtual {p1, v2, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 775
    iget-object v3, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->onPostMessage:Lo/IPostMessageService$Stub;

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 776
    iget-object v3, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->onTransact:[Landroid/graphics/drawable/Drawable;

    aput-object p1, v3, v0

    .line 777
    iget v3, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->ICustomTabsCallback$Stub:I

    add-int/2addr v3, v1

    iput v3, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->ICustomTabsCallback$Stub:I

    .line 778
    iget v1, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->onRelationshipValidationResult:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result p1

    or-int/2addr p1, v1

    iput p1, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->onRelationshipValidationResult:I

    .line 779
    invoke-virtual {p0}, Lo/IPostMessageService$Stub$onNavigationEvent;->onPostMessage()V

    const/4 p1, 0x0

    .line 780
    iput-object p1, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->newSession:Landroid/graphics/Rect;

    .line 781
    iput-boolean v2, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->ICustomTabsService:Z

    .line 782
    iput-boolean v2, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->warmup:Z

    .line 783
    iput-boolean v2, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->ICustomTabsService$Stub:Z

    return v0
.end method

.method public final ICustomTabsCallback()Landroid/graphics/Rect;
    .locals 8

    .line 966
    iget-boolean v0, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->ICustomTabsCallback$Stub$Proxy:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 969
    :cond_0
    iget-object v0, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->newSession:Landroid/graphics/Rect;

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->ICustomTabsService:Z

    if-eqz v0, :cond_1

    goto :goto_1

    .line 972
    :cond_1
    invoke-direct {p0}, Lo/IPostMessageService$Stub$onNavigationEvent;->getInterfaceDescriptor()V

    .line 974
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 975
    iget v2, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->ICustomTabsCallback$Stub:I

    .line 976
    iget-object v3, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->onTransact:[Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_7

    .line 978
    aget-object v6, v3, v5

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_6

    if-nez v1, :cond_2

    .line 979
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v4, v4, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 980
    :cond_2
    iget v6, v0, Landroid/graphics/Rect;->left:I

    iget v7, v1, Landroid/graphics/Rect;->left:I

    if-le v6, v7, :cond_3

    iget v6, v0, Landroid/graphics/Rect;->left:I

    iput v6, v1, Landroid/graphics/Rect;->left:I

    .line 981
    :cond_3
    iget v6, v0, Landroid/graphics/Rect;->top:I

    iget v7, v1, Landroid/graphics/Rect;->top:I

    if-le v6, v7, :cond_4

    iget v6, v0, Landroid/graphics/Rect;->top:I

    iput v6, v1, Landroid/graphics/Rect;->top:I

    .line 982
    :cond_4
    iget v6, v0, Landroid/graphics/Rect;->right:I

    iget v7, v1, Landroid/graphics/Rect;->right:I

    if-le v6, v7, :cond_5

    iget v6, v0, Landroid/graphics/Rect;->right:I

    iput v6, v1, Landroid/graphics/Rect;->right:I

    .line 983
    :cond_5
    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    if-le v6, v7, :cond_6

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    iput v6, v1, Landroid/graphics/Rect;->bottom:I

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_7
    const/4 v0, 0x1

    .line 986
    iput-boolean v0, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->ICustomTabsService:Z

    .line 987
    iput-object v1, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->newSession:Landroid/graphics/Rect;

    return-object v1

    .line 970
    :cond_8
    :goto_1
    iget-object v0, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->newSession:Landroid/graphics/Rect;

    return-object v0
.end method

.method public final ICustomTabsCallback(I)V
    .locals 0

    .line 1070
    iput p1, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->INotificationSideChannel:I

    return-void
.end method

.method public final ICustomTabsCallback$Stub()Z
    .locals 1

    .line 998
    iget-boolean v0, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->getInterfaceDescriptor:Z

    return v0
.end method

.method public declared-synchronized ICustomTabsCallback$Stub$Proxy()Z
    .locals 6

    monitor-enter p0

    .line 1132
    :try_start_0
    iget-boolean v0, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->ICustomTabsService$Stub:Z

    if-eqz v0, :cond_0

    .line 1133
    iget-boolean v0, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->IPostMessageService$Stub:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 1135
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lo/IPostMessageService$Stub$onNavigationEvent;->getInterfaceDescriptor()V

    const/4 v0, 0x1

    .line 1136
    iput-boolean v0, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->ICustomTabsService$Stub:Z

    .line 1137
    iget v1, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->ICustomTabsCallback$Stub:I

    .line 1138
    iget-object v2, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->onTransact:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_2

    .line 1140
    aget-object v5, v2, v4

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v5

    if-nez v5, :cond_1

    .line 1141
    iput-boolean v3, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->IPostMessageService$Stub:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1142
    monitor-exit p0

    return v3

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1145
    :cond_2
    :try_start_2
    iput-boolean v0, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->IPostMessageService$Stub:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1146
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected ICustomTabsService()V
    .locals 6

    const/4 v0, 0x1

    .line 1042
    iput-boolean v0, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->warmup:Z

    .line 1043
    invoke-direct {p0}, Lo/IPostMessageService$Stub$onNavigationEvent;->getInterfaceDescriptor()V

    .line 1044
    iget v0, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->ICustomTabsCallback$Stub:I

    .line 1045
    iget-object v1, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->onTransact:[Landroid/graphics/drawable/Drawable;

    const/4 v2, -0x1

    .line 1046
    iput v2, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->requestPostMessageChannel:I

    iput v2, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->postMessage:I

    const/4 v2, 0x0

    .line 1047
    iput v2, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->updateVisuals:I

    iput v2, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->extraCommand:I

    :goto_0
    if-ge v2, v0, :cond_4

    .line 1049
    aget-object v3, v1, v2

    .line 1050
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 1051
    iget v5, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->postMessage:I

    if-le v4, v5, :cond_0

    iput v4, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->postMessage:I

    .line 1052
    :cond_0
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 1053
    iget v5, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->requestPostMessageChannel:I

    if-le v4, v5, :cond_1

    iput v4, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->requestPostMessageChannel:I

    .line 1054
    :cond_1
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v4

    .line 1055
    iget v5, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->extraCommand:I

    if-le v4, v5, :cond_2

    iput v4, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->extraCommand:I

    .line 1056
    :cond_2
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    .line 1057
    iget v4, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->updateVisuals:I

    if-le v3, v4, :cond_3

    iput v3, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->updateVisuals:I

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final asBinder()I
    .locals 1

    .line 1005
    iget-boolean v0, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->warmup:Z

    if-nez v0, :cond_0

    .line 1006
    invoke-virtual {p0}, Lo/IPostMessageService$Stub$onNavigationEvent;->ICustomTabsService()V

    .line 1008
    :cond_0
    iget v0, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->postMessage:I

    return v0
.end method

.method public final asInterface()I
    .locals 1

    .line 1015
    iget-boolean v0, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->warmup:Z

    if-nez v0, :cond_0

    .line 1016
    invoke-virtual {p0}, Lo/IPostMessageService$Stub$onNavigationEvent;->ICustomTabsService()V

    .line 1018
    :cond_0
    iget v0, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->requestPostMessageChannel:I

    return v0
.end method

.method public canApplyTheme()Z
    .locals 6

    .line 911
    iget v0, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->ICustomTabsCallback$Stub:I

    .line 912
    iget-object v1, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->onTransact:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    .line 914
    aget-object v4, v1, v3

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    .line 916
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v4

    if-eqz v4, :cond_1

    return v5

    .line 920
    :cond_0
    iget-object v4, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->asInterface:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v4, :cond_1

    .line 921
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable$ConstantState;->canApplyTheme()Z

    move-result v4

    if-eqz v4, :cond_1

    return v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public final extraCallback()I
    .locals 1

    .line 821
    iget v0, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->ICustomTabsCallback$Stub:I

    return v0
.end method

.method public final extraCallback(Z)V
    .locals 0

    .line 991
    iput-boolean p1, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->getInterfaceDescriptor:Z

    return-void
.end method

.method public getChangingConfigurations()I
    .locals 2

    .line 759
    iget v0, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->asBinder:I

    iget v1, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->onRelationshipValidationResult:I

    or-int/2addr v0, v1

    return v0
.end method

.method public final newSession()Z
    .locals 6

    .line 1101
    iget-boolean v0, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->IPostMessageService:Z

    if-eqz v0, :cond_0

    .line 1102
    iget-boolean v0, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->validateRelationship:Z

    return v0

    .line 1104
    :cond_0
    invoke-direct {p0}, Lo/IPostMessageService$Stub$onNavigationEvent;->getInterfaceDescriptor()V

    .line 1105
    iget v0, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->ICustomTabsCallback$Stub:I

    .line 1106
    iget-object v1, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->onTransact:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v0, :cond_2

    .line 1109
    aget-object v5, v1, v3

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1114
    :cond_2
    :goto_1
    iput-boolean v2, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->validateRelationship:Z

    .line 1115
    iput-boolean v4, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->IPostMessageService:Z

    return v2
.end method

.method final onMessageChannelReady()I
    .locals 1

    .line 796
    iget-object v0, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->onTransact:[Landroid/graphics/drawable/Drawable;

    array-length v0, v0

    return v0
.end method

.method public final onMessageChannelReady(I)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 828
    iget-object v0, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->onTransact:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    return-object v0

    .line 833
    :cond_0
    iget-object v0, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->asInterface:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 834
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_2

    .line 836
    iget-object v2, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->asInterface:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 837
    iget-object v3, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->onNavigationEvent:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v2}, Lo/IPostMessageService$Stub$onNavigationEvent;->onNavigationEvent(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 838
    iget-object v3, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->onTransact:[Landroid/graphics/drawable/Drawable;

    aput-object v2, v3, p1

    .line 839
    iget-object p1, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->asInterface:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 840
    iget-object p1, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->asInterface:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 841
    iput-object v1, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->asInterface:Landroid/util/SparseArray;

    :cond_1
    return-object v2

    :cond_2
    return-object v1
.end method

.method final onMessageChannelReady(Landroid/content/res/Resources$Theme;)V
    .locals 5

    if-eqz p1, :cond_2

    .line 894
    invoke-direct {p0}, Lo/IPostMessageService$Stub$onNavigationEvent;->getInterfaceDescriptor()V

    .line 895
    iget v0, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->ICustomTabsCallback$Stub:I

    .line 896
    iget-object v1, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->onTransact:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 898
    aget-object v3, v1, v2

    if-eqz v3, :cond_0

    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 899
    aget-object v3, v1, v2

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 901
    iget v3, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->onRelationshipValidationResult:I

    aget-object v4, v1, v2

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v4

    or-int/2addr v3, v4

    iput v3, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->onRelationshipValidationResult:I

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 904
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/IPostMessageService$Stub$onNavigationEvent;->onMessageChannelReady(Landroid/content/res/Resources;)V

    :cond_2
    return-void
.end method

.method final onMessageChannelReady(Landroid/content/res/Resources;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 878
    iput-object p1, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->onNavigationEvent:Landroid/content/res/Resources;

    .line 881
    iget v0, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->extraCallback:I

    invoke-static {p1, v0}, Lo/IPostMessageService$Stub;->onPostMessage(Landroid/content/res/Resources;I)I

    move-result p1

    .line 882
    iget v0, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->extraCallback:I

    .line 883
    iput p1, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->extraCallback:I

    if-eq v0, p1, :cond_0

    const/4 p1, 0x0

    .line 885
    iput-boolean p1, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->warmup:Z

    .line 886
    iput-boolean p1, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->ICustomTabsService:Z

    :cond_0
    return-void
.end method

.method final onMessageChannelReady(II)Z
    .locals 7

    .line 853
    iget v0, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->ICustomTabsCallback$Stub:I

    .line 854
    iget-object v1, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->onTransact:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    .line 856
    aget-object v5, v1, v3

    if-eqz v5, :cond_1

    .line 858
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v5, v6, :cond_0

    .line 859
    aget-object v5, v1, v3

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    move-result v5

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    if-ne v3, p2, :cond_1

    move v4, v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 866
    :cond_2
    iput p1, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->notify:I

    return v4
.end method

.method onNavigationEvent()V
    .locals 4

    .line 932
    iget v0, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->ICustomTabsCallback$Stub:I

    .line 933
    iget-object v1, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->onTransact:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 935
    aget-object v3, v1, v2

    if-eqz v3, :cond_0

    .line 936
    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 939
    iput-boolean v0, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->IPostMessageService$Stub$Proxy:Z

    return-void
.end method

.method public onNavigationEvent(II)V
    .locals 2

    .line 1123
    new-array p2, p2, [Landroid/graphics/drawable/Drawable;

    .line 1124
    iget-object v0, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->onTransact:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-static {v0, v1, p2, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1125
    iput-object p2, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->onTransact:[Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method onPostMessage()V
    .locals 1

    const/4 v0, 0x0

    .line 791
    iput-boolean v0, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->mayLaunchUrl:Z

    .line 792
    iput-boolean v0, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->IPostMessageService:Z

    return-void
.end method

.method public final onPostMessage(I)V
    .locals 0

    .line 1062
    iput p1, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->cancel:I

    return-void
.end method

.method public final onPostMessage(Z)V
    .locals 0

    .line 959
    iput-boolean p1, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->ICustomTabsCallback$Stub$Proxy:Z

    return-void
.end method

.method public final onRelationshipValidationResult()I
    .locals 1

    .line 1025
    iget-boolean v0, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->warmup:Z

    if-nez v0, :cond_0

    .line 1026
    invoke-virtual {p0}, Lo/IPostMessageService$Stub$onNavigationEvent;->ICustomTabsService()V

    .line 1028
    :cond_0
    iget v0, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->extraCommand:I

    return v0
.end method

.method public final onTransact()I
    .locals 1

    .line 1035
    iget-boolean v0, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->warmup:Z

    if-nez v0, :cond_0

    .line 1036
    invoke-virtual {p0}, Lo/IPostMessageService$Stub$onNavigationEvent;->ICustomTabsService()V

    .line 1038
    :cond_0
    iget v0, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->updateVisuals:I

    return v0
.end method

.method public final warmup()I
    .locals 6

    .line 1082
    iget-boolean v0, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->mayLaunchUrl:Z

    if-eqz v0, :cond_0

    .line 1083
    iget v0, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->ICustomTabsService$Stub$Proxy:I

    return v0

    .line 1085
    :cond_0
    invoke-direct {p0}, Lo/IPostMessageService$Stub$onNavigationEvent;->getInterfaceDescriptor()V

    .line 1086
    iget v0, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->ICustomTabsCallback$Stub:I

    .line 1087
    iget-object v1, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->onTransact:[Landroid/graphics/drawable/Drawable;

    if-lez v0, :cond_1

    const/4 v2, 0x0

    .line 1088
    aget-object v2, v1, v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, -0x2

    :goto_0
    const/4 v3, 0x1

    const/4 v4, 0x1

    :goto_1
    if-ge v4, v0, :cond_2

    .line 1090
    aget-object v5, v1, v4

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v5

    invoke-static {v2, v5}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1092
    :cond_2
    iput v2, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->ICustomTabsService$Stub$Proxy:I

    .line 1093
    iput-boolean v3, p0, Lo/IPostMessageService$Stub$onNavigationEvent;->mayLaunchUrl:Z

    return v2
.end method
