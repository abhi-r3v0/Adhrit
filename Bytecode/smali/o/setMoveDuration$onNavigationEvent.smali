.class public final Lo/setMoveDuration$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/addBackgroundStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setMoveDuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onNavigationEvent"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/main/navigation/NavigationTransactionHelper$Companion;",
        "",
        "()V",
        "TAG",
        "",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final synthetic zza:Lo/getFatalSessionFilesDir;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/getFatalSessionFilesDir;)V
    .locals 0

    .line 1001
    iput-object p1, p0, Lo/setMoveDuration$onNavigationEvent;->zza:Lo/getFatalSessionFilesDir;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 2

    .line 1002
    instance-of p1, p1, Lcom/google/firebase/FirebaseNetworkException;

    if-eqz p1, :cond_0

    .line 1003
    invoke-static {}, Lo/getFilesDir;->zzd()Lo/getFarmBackgroundImage;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Failure to refresh token; scheduling refresh after failure"

    invoke-virtual {p1, v1, v0}, Lo/getFarmBackgroundImage;->onPostMessage(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1004
    iget-object p1, p0, Lo/setMoveDuration$onNavigationEvent;->zza:Lo/getFatalSessionFilesDir;

    iget-object p1, p1, Lo/getFatalSessionFilesDir;->zza:Lo/getFilesDir;

    invoke-virtual {p1}, Lo/getFilesDir;->zzb()V

    :cond_0
    return-void
.end method
