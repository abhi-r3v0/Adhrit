.class final Lo/setFirebaseUIVersion$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/useAppLanguage$extraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setFirebaseUIVersion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic onNavigationEvent:F


# direct methods
.method constructor <init>(F)V
    .locals 0

    .line 1110
    iput p1, p0, Lo/setFirebaseUIVersion$5;->onNavigationEvent:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(Lo/signOut;)Lo/signOut;
    .locals 2

    .line 1116
    instance-of v0, p1, Lo/onAuthStateChanged;

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    new-instance v0, Lo/getPendingAuthResult;

    iget v1, p0, Lo/setFirebaseUIVersion$5;->onNavigationEvent:F

    invoke-direct {v0, v1, p1}, Lo/getPendingAuthResult;-><init>(FLo/signOut;)V

    return-object v0
.end method
