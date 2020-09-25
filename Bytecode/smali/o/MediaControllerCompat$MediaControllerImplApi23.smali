.class public abstract Lo/MediaControllerCompat$MediaControllerImplApi23;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;
    }
.end annotation


# instance fields
.field public ICustomTabsCallback:I

.field public ICustomTabsCallback$Stub:I

.field public ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

.field ICustomTabsService:Ljava/lang/CharSequence;

.field public asBinder:Z

.field asInterface:I

.field public extraCallback:I

.field getInterfaceDescriptor:I

.field public mayLaunchUrl:Z

.field newSession:Ljava/lang/CharSequence;

.field onMessageChannelReady:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:Lo/MediaControllerCompat$Callback$StubApi21;

.field private final onPostMessage:Ljava/lang/ClassLoader;

.field public onRelationshipValidationResult:Z

.field public onTransact:I

.field postMessage:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field updateVisuals:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field warmup:I


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 101
    iput-boolean v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi23;->onRelationshipValidationResult:Z

    const/4 v0, 0x0

    .line 111
    iput-boolean v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi23;->mayLaunchUrl:Z

    const/4 v0, 0x0

    .line 121
    iput-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi23;->onNavigationEvent:Lo/MediaControllerCompat$Callback$StubApi21;

    .line 122
    iput-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi23;->onPostMessage:Ljava/lang/ClassLoader;

    return-void
.end method

.method constructor <init>(Lo/MediaControllerCompat$Callback$StubApi21;Ljava/lang/ClassLoader;)V
    .locals 1

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 101
    iput-boolean v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi23;->onRelationshipValidationResult:Z

    const/4 v0, 0x0

    .line 111
    iput-boolean v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi23;->mayLaunchUrl:Z

    .line 127
    iput-object p1, p0, Lo/MediaControllerCompat$MediaControllerImplApi23;->onNavigationEvent:Lo/MediaControllerCompat$Callback$StubApi21;

    .line 128
    iput-object p2, p0, Lo/MediaControllerCompat$MediaControllerImplApi23;->onPostMessage:Ljava/lang/ClassLoader;

    return-void
.end method


# virtual methods
.method public ICustomTabsCallback(Landroidx/fragment/app/Fragment;)Lo/MediaControllerCompat$MediaControllerImplApi23;
    .locals 2

    .line 357
    new-instance v0, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p1}, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {p0, v0}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady(Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;)V

    return-object p0
.end method

.method public ICustomTabsCallback(Landroidx/fragment/app/Fragment;Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;)Lo/MediaControllerCompat$MediaControllerImplApi23;
    .locals 1

    .line 468
    new-instance v0, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;

    invoke-direct {v0, p1, p2}, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;-><init>(Landroidx/fragment/app/Fragment;Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;)V

    invoke-virtual {p0, v0}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady(Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;)V

    return-object p0
.end method

.method public abstract ICustomTabsCallback()V
.end method

.method public asInterface()Z
    .locals 1

    .line 477
    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final extraCallback(Landroid/view/View;Ljava/lang/String;)Lo/MediaControllerCompat$MediaControllerImplApi23;
    .locals 3

    .line 592
    invoke-static {}, Lo/getAudioStream;->extraCallback()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 593
    invoke-static {p1}, Lo/unregisterCallbackListener;->requestPostMessageChannel(Landroid/view/View;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 598
    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi23;->updateVisuals:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 599
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi23;->updateVisuals:Ljava/util/ArrayList;

    .line 600
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi23;->postMessage:Ljava/util/ArrayList;

    goto :goto_0

    .line 601
    :cond_0
    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi23;->postMessage:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "\' has already been added to the transaction."

    if-nez v0, :cond_2

    .line 604
    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi23;->updateVisuals:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 609
    :goto_0
    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi23;->updateVisuals:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 610
    iget-object p1, p0, Lo/MediaControllerCompat$MediaControllerImplApi23;->postMessage:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 605
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "A shared element with the source name \'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 602
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "A shared element with the target name \'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 595
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unique transitionNames are required for all sharedElements"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    return-object p0
.end method

.method public abstract extraCallback()V
.end method

.method public onMessageChannelReady(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V
    .locals 3

    .line 245
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 246
    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    .line 247
    invoke-virtual {v0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 248
    invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_0
    const-string v0, " now "

    const-string v1, ": was "

    if-eqz p3, :cond_3

    .line 255
    iget-object v2, p2, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p2, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 256
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t change tag of fragment "

    invoke-direct {p4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 260
    :cond_2
    :goto_0
    iput-object p3, p2, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    :cond_3
    if-eqz p1, :cond_7

    const/4 v2, -0x1

    if-eq p1, v2, :cond_6

    .line 268
    iget p3, p2, Landroidx/fragment/app/Fragment;->mFragmentId:I

    if-eqz p3, :cond_5

    iget p3, p2, Landroidx/fragment/app/Fragment;->mFragmentId:I

    if-ne p3, p1, :cond_4

    goto :goto_1

    .line 269
    :cond_4
    new-instance p3, Ljava/lang/IllegalStateException;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t change container ID of fragment "

    invoke-direct {p4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Landroidx/fragment/app/Fragment;->mFragmentId:I

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 273
    :cond_5
    :goto_1
    iput p1, p2, Landroidx/fragment/app/Fragment;->mFragmentId:I

    iput p1, p2, Landroidx/fragment/app/Fragment;->mContainerId:I

    goto :goto_2

    .line 265
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "Can\'t add fragment "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " with tag "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " to container view with no id"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 276
    :cond_7
    :goto_2
    new-instance p1, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;

    invoke-direct {p1, p4, p2}, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {p0, p1}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady(Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;)V

    return-void

    .line 249
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Fragment "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " must be a public static class to be  properly recreated from instance state."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onMessageChannelReady(Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;)V
    .locals 1

    .line 132
    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 133
    iget v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi23;->extraCallback:I

    iput v0, p1, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->onPostMessage:I

    .line 134
    iget v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi23;->ICustomTabsCallback:I

    iput v0, p1, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->onNavigationEvent:I

    .line 135
    iget v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi23;->onTransact:I

    iput v0, p1, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->ICustomTabsCallback:I

    .line 136
    iget v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi23;->ICustomTabsCallback$Stub:I

    iput v0, p1, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->onTransact:I

    return-void
.end method

.method public abstract onNavigationEvent()I
.end method

.method public onNavigationEvent(Landroidx/fragment/app/Fragment;)Lo/MediaControllerCompat$MediaControllerImplApi23;
    .locals 2

    .line 407
    new-instance v0, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p1}, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {p0, v0}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady(Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;)V

    return-object p0
.end method

.method public abstract onPostMessage()I
.end method

.method public final onPostMessage(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Lo/MediaControllerCompat$MediaControllerImplApi23;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 171
    invoke-virtual {p0, v0, p1, p2, v1}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    return-object p0
.end method
