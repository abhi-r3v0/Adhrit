.class final Lo/MediaControllerCompat$Callback$StubCompat;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;


# instance fields
.field private final onNavigationEvent:Lo/requestExtraBinder;


# direct methods
.method constructor <init>(Lo/requestExtraBinder;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lo/MediaControllerCompat$Callback$StubCompat;->onNavigationEvent:Lo/requestExtraBinder;

    return-void
.end method


# virtual methods
.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 5

    .line 50
    const-class v0, Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    new-instance p1, Landroidx/fragment/app/FragmentContainerView;

    iget-object p2, p0, Lo/MediaControllerCompat$Callback$StubCompat;->onNavigationEvent:Lo/requestExtraBinder;

    invoke-direct {p1, p3, p4, p2}, Landroidx/fragment/app/FragmentContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lo/requestExtraBinder;)V

    return-object p1

    :cond_0
    const-string v0, "fragment"

    .line 54
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_1

    return-object v0

    :cond_1
    const-string p2, "class"

    .line 58
    invoke-interface {p4, v0, p2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 59
    sget-object v1, Lo/registerCallback$onMessageChannelReady;->Fragment:[I

    invoke-virtual {p3, p4, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    if-nez p2, :cond_2

    .line 61
    sget p2, Lo/registerCallback$onMessageChannelReady;->Fragment_android_name:I

    invoke-virtual {v1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 63
    :cond_2
    sget v2, Lo/registerCallback$onMessageChannelReady;->Fragment_android_id:I

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 64
    sget v4, Lo/registerCallback$onMessageChannelReady;->Fragment_android_tag:I

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 65
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz p2, :cond_13

    .line 67
    invoke-virtual {p3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v1, p2}, Lo/MediaControllerCompat$Callback$StubApi21;->onNavigationEvent(Ljava/lang/ClassLoader;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_6

    :cond_3
    if-eqz p1, :cond_4

    .line 73
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_0
    if-ne p1, v3, :cond_6

    if-ne v2, v3, :cond_6

    if-eqz v4, :cond_5

    goto :goto_1

    .line 75
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ": Must specify unique android:id, android:tag, or have a parent with an id for "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_1
    if-eq v2, v3, :cond_7

    .line 83
    iget-object v0, p0, Lo/MediaControllerCompat$Callback$StubCompat;->onNavigationEvent:Lo/requestExtraBinder;

    invoke-virtual {v0, v2}, Lo/requestExtraBinder;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    :cond_7
    if-nez v0, :cond_8

    if-eqz v4, :cond_8

    .line 85
    iget-object v0, p0, Lo/MediaControllerCompat$Callback$StubCompat;->onNavigationEvent:Lo/requestExtraBinder;

    invoke-virtual {v0, v4}, Lo/requestExtraBinder;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    :cond_8
    if-nez v0, :cond_9

    if-eq p1, v3, :cond_9

    .line 88
    iget-object v0, p0, Lo/MediaControllerCompat$Callback$StubCompat;->onNavigationEvent:Lo/requestExtraBinder;

    invoke-virtual {v0, p1}, Lo/requestExtraBinder;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    :cond_9
    const/4 v1, 0x2

    .line 91
    invoke-static {v1}, Lo/requestExtraBinder;->onMessageChannelReady(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "onCreateView: id=0x"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " fname="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " existing="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "FragmentManager"

    .line 92
    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    const/4 v1, 0x1

    if-nez v0, :cond_d

    .line 97
    iget-object v0, p0, Lo/MediaControllerCompat$Callback$StubCompat;->onNavigationEvent:Lo/requestExtraBinder;

    .line 3840
    iget-object v3, v0, Lo/requestExtraBinder;->getInterfaceDescriptor:Landroidx/fragment/app/Fragment;

    if-eqz v3, :cond_b

    .line 3845
    iget-object v0, v0, Lo/requestExtraBinder;->getInterfaceDescriptor:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mFragmentManager:Lo/requestExtraBinder;

    invoke-virtual {v0}, Lo/requestExtraBinder;->postMessage()Lo/MediaControllerCompat$Callback$StubApi21;

    move-result-object v0

    goto :goto_2

    .line 3847
    :cond_b
    iget-object v0, v0, Lo/requestExtraBinder;->ICustomTabsCallback$Stub$Proxy:Lo/MediaControllerCompat$Callback$StubApi21;

    .line 98
    :goto_2
    invoke-virtual {p3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p3

    .line 97
    invoke-virtual {v0, p3, p2}, Lo/MediaControllerCompat$Callback$StubApi21;->onPostMessage(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 99
    iput-boolean v1, v0, Landroidx/fragment/app/Fragment;->mFromLayout:Z

    if-eqz v2, :cond_c

    move p3, v2

    goto :goto_3

    :cond_c
    move p3, p1

    .line 100
    :goto_3
    iput p3, v0, Landroidx/fragment/app/Fragment;->mFragmentId:I

    .line 101
    iput p1, v0, Landroidx/fragment/app/Fragment;->mContainerId:I

    .line 102
    iput-object v4, v0, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    .line 103
    iput-boolean v1, v0, Landroidx/fragment/app/Fragment;->mInLayout:Z

    .line 104
    iget-object p1, p0, Lo/MediaControllerCompat$Callback$StubCompat;->onNavigationEvent:Lo/requestExtraBinder;

    iput-object p1, v0, Landroidx/fragment/app/Fragment;->mFragmentManager:Lo/requestExtraBinder;

    .line 105
    iget-object p1, p0, Lo/MediaControllerCompat$Callback$StubCompat;->onNavigationEvent:Lo/requestExtraBinder;

    iget-object p1, p1, Lo/requestExtraBinder;->ICustomTabsService:Lo/postToHandler;

    iput-object p1, v0, Landroidx/fragment/app/Fragment;->mHost:Lo/postToHandler;

    .line 106
    iget-object p1, p0, Lo/MediaControllerCompat$Callback$StubCompat;->onNavigationEvent:Lo/requestExtraBinder;

    iget-object p1, p1, Lo/requestExtraBinder;->ICustomTabsService:Lo/postToHandler;

    .line 4200
    iget-object p1, p1, Lo/postToHandler;->onNavigationEvent:Landroid/content/Context;

    .line 106
    iget-object p3, v0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p4, p3}, Landroidx/fragment/app/Fragment;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 108
    iget-object p1, p0, Lo/MediaControllerCompat$Callback$StubCompat;->onNavigationEvent:Lo/requestExtraBinder;

    invoke-virtual {p1, v0}, Lo/requestExtraBinder;->ICustomTabsCallback$Stub$Proxy(Landroidx/fragment/app/Fragment;)V

    .line 109
    iget-object p1, p0, Lo/MediaControllerCompat$Callback$StubCompat;->onNavigationEvent:Lo/requestExtraBinder;

    invoke-virtual {p1, v0}, Lo/requestExtraBinder;->asBinder(Landroidx/fragment/app/Fragment;)V

    goto :goto_4

    .line 111
    :cond_d
    iget-boolean p3, v0, Landroidx/fragment/app/Fragment;->mInLayout:Z

    if-nez p3, :cond_12

    .line 121
    iput-boolean v1, v0, Landroidx/fragment/app/Fragment;->mInLayout:Z

    .line 122
    iget-object p1, p0, Lo/MediaControllerCompat$Callback$StubCompat;->onNavigationEvent:Lo/requestExtraBinder;

    iget-object p1, p1, Lo/requestExtraBinder;->ICustomTabsService:Lo/postToHandler;

    iput-object p1, v0, Landroidx/fragment/app/Fragment;->mHost:Lo/postToHandler;

    .line 124
    iget-object p1, p0, Lo/MediaControllerCompat$Callback$StubCompat;->onNavigationEvent:Lo/requestExtraBinder;

    iget-object p1, p1, Lo/requestExtraBinder;->ICustomTabsService:Lo/postToHandler;

    .line 5200
    iget-object p1, p1, Lo/postToHandler;->onNavigationEvent:Landroid/content/Context;

    .line 124
    iget-object p3, v0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p4, p3}, Landroidx/fragment/app/Fragment;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 132
    :goto_4
    iget-object p1, p0, Lo/MediaControllerCompat$Callback$StubCompat;->onNavigationEvent:Lo/requestExtraBinder;

    iget p1, p1, Lo/requestExtraBinder;->ICustomTabsCallback$Stub:I

    if-gtz p1, :cond_e

    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mFromLayout:Z

    if-eqz p1, :cond_e

    .line 133
    iget-object p1, p0, Lo/MediaControllerCompat$Callback$StubCompat;->onNavigationEvent:Lo/requestExtraBinder;

    invoke-virtual {p1, v0, v1}, Lo/requestExtraBinder;->onMessageChannelReady(Landroidx/fragment/app/Fragment;I)V

    goto :goto_5

    .line 135
    :cond_e
    iget-object p1, p0, Lo/MediaControllerCompat$Callback$StubCompat;->onNavigationEvent:Lo/requestExtraBinder;

    invoke-virtual {p1, v0}, Lo/requestExtraBinder;->asBinder(Landroidx/fragment/app/Fragment;)V

    .line 138
    :goto_5
    iget-object p1, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz p1, :cond_11

    if-eqz v2, :cond_f

    .line 143
    iget-object p1, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setId(I)V

    .line 145
    :cond_f
    iget-object p1, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_10

    .line 146
    iget-object p1, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 148
    :cond_10
    iget-object p1, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    return-object p1

    .line 139
    :cond_11
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Fragment "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " did not create a view."

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 114
    :cond_12
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ": Duplicate id 0x"

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ", tag "

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ", or parent id 0x"

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " with another fragment for "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    :cond_13
    :goto_6
    return-object v0
.end method

.method public final onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-virtual {p0, v0, p1, p2, p3}, Lo/MediaControllerCompat$Callback$StubCompat;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
