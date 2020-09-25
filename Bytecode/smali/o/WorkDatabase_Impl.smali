.class public final Lo/WorkDatabase_Impl;
.super Ljava/lang/Object;

# interfaces
.implements Lo/optional;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/WorkDatabase_Impl$onNavigationEvent;
    }
.end annotation


# static fields
.field public static final onPostMessage:Lo/optional;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 4000
    new-instance v0, Lo/WorkDatabase_Impl;

    invoke-direct {v0}, Lo/WorkDatabase_Impl;-><init>()V

    sput-object v0, Lo/WorkDatabase_Impl;->onPostMessage:Lo/optional;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "com.google.android.play.core.appupdate.protocol.IAppUpdateService"

    .line 3000
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lo/buildCrashlytics;

    if-eqz v1, :cond_1

    check-cast v0, Lo/buildCrashlytics;

    return-object v0

    :cond_1
    new-instance v0, Lo/notifyEventReceiver;

    invoke-direct {v0, p1}, Lo/notifyEventReceiver;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
