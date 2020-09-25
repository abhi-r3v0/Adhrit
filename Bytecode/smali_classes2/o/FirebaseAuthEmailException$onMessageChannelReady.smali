.class final Lo/FirebaseAuthEmailException$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/FirebaseAuthEmailException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field public final ICustomTabsCallback:Landroid/graphics/RectF;

.field public final extraCallback:F

.field public final onMessageChannelReady:Landroid/graphics/Path;

.field public final onNavigationEvent:Lo/FirebaseAuthEmailException$ICustomTabsCallback;

.field public final onPostMessage:Lo/useAppLanguage;


# direct methods
.method constructor <init>(Lo/useAppLanguage;FLandroid/graphics/RectF;Lo/FirebaseAuthEmailException$ICustomTabsCallback;Landroid/graphics/Path;)V
    .locals 0

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    iput-object p4, p0, Lo/FirebaseAuthEmailException$onMessageChannelReady;->onNavigationEvent:Lo/FirebaseAuthEmailException$ICustomTabsCallback;

    .line 276
    iput-object p1, p0, Lo/FirebaseAuthEmailException$onMessageChannelReady;->onPostMessage:Lo/useAppLanguage;

    .line 277
    iput p2, p0, Lo/FirebaseAuthEmailException$onMessageChannelReady;->extraCallback:F

    .line 278
    iput-object p3, p0, Lo/FirebaseAuthEmailException$onMessageChannelReady;->ICustomTabsCallback:Landroid/graphics/RectF;

    .line 279
    iput-object p5, p0, Lo/FirebaseAuthEmailException$onMessageChannelReady;->onMessageChannelReady:Landroid/graphics/Path;

    return-void
.end method
