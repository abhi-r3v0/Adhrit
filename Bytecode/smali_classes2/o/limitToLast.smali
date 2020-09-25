.class public abstract Lo/limitToLast;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/limitToLast$onNavigationEvent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final ICustomTabsCallback:Z

.field final ICustomTabsCallback$Stub:I

.field public ICustomTabsService:Z

.field final asBinder:I

.field public final asInterface:Ljava/lang/String;

.field public final extraCallback:Lo/newRunLoop;

.field public newSession:Z

.field final onMessageChannelReady:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final onNavigationEvent:Lcom/squareup/picasso/Picasso;

.field public final onPostMessage:I

.field final onRelationshipValidationResult:Landroid/graphics/drawable/Drawable;

.field final onTransact:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/squareup/picasso/Picasso;Ljava/lang/Object;Lo/newRunLoop;IIILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/picasso/Picasso;",
            "TT;",
            "Lo/newRunLoop;",
            "III",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Z)V"
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lo/limitToLast;->onNavigationEvent:Lcom/squareup/picasso/Picasso;

    .line 52
    iput-object p3, p0, Lo/limitToLast;->extraCallback:Lo/newRunLoop;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 53
    :cond_0
    new-instance p3, Lo/limitToLast$onNavigationEvent;

    iget-object p1, p1, Lcom/squareup/picasso/Picasso;->onRelationshipValidationResult:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p3, p0, p2, p1}, Lo/limitToLast$onNavigationEvent;-><init>(Lo/limitToLast;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    move-object p1, p3

    :goto_0
    iput-object p1, p0, Lo/limitToLast;->onMessageChannelReady:Ljava/lang/ref/WeakReference;

    .line 55
    iput p4, p0, Lo/limitToLast;->onPostMessage:I

    .line 56
    iput p5, p0, Lo/limitToLast;->ICustomTabsCallback$Stub:I

    .line 57
    iput-boolean p10, p0, Lo/limitToLast;->ICustomTabsCallback:Z

    .line 58
    iput p6, p0, Lo/limitToLast;->asBinder:I

    .line 59
    iput-object p7, p0, Lo/limitToLast;->onRelationshipValidationResult:Landroid/graphics/drawable/Drawable;

    .line 60
    iput-object p8, p0, Lo/limitToLast;->asInterface:Ljava/lang/String;

    if-eqz p9, :cond_1

    goto :goto_1

    :cond_1
    move-object p9, p0

    .line 61
    :goto_1
    iput-object p9, p0, Lo/limitToLast;->onTransact:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public ICustomTabsCallback()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lo/limitToLast;->onMessageChannelReady:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public abstract onNavigationEvent()V
.end method

.method public onPostMessage()V
    .locals 1

    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Lo/limitToLast;->newSession:Z

    return-void
.end method

.method public abstract onPostMessage(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$extraCallback;)V
.end method
