.class public Lo/setNegativeEnabled;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# instance fields
.field private final extraCallback:Ljava/lang/String;

.field private final onPostMessage:Landroid/os/IBinder;


# direct methods
.method protected constructor <init>(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lo/setNegativeEnabled;->onPostMessage:Landroid/os/IBinder;

    .line 3
    iput-object p2, p0, Lo/setNegativeEnabled;->extraCallback:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 5
    iget-object v0, p0, Lo/setNegativeEnabled;->onPostMessage:Landroid/os/IBinder;

    return-object v0
.end method
