.class final Lo/setPersistenceEnabled$4;
.super Lo/getParent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setPersistenceEnabled;->onPostMessage(IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:J

.field private synthetic onNavigationEvent:I

.field private synthetic onPostMessage:Lo/setPersistenceEnabled;


# direct methods
.method varargs constructor <init>(Lo/setPersistenceEnabled;Ljava/lang/String;[Ljava/lang/Object;IJ)V
    .locals 0

    .line 364
    iput-object p1, p0, Lo/setPersistenceEnabled$4;->onPostMessage:Lo/setPersistenceEnabled;

    iput p4, p0, Lo/setPersistenceEnabled$4;->onNavigationEvent:I

    iput-wide p5, p0, Lo/setPersistenceEnabled$4;->ICustomTabsCallback:J

    invoke-direct {p0, p2, p3}, Lo/getParent;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final extraCallback()V
    .locals 4

    .line 367
    :try_start_0
    iget-object v0, p0, Lo/setPersistenceEnabled$4;->onPostMessage:Lo/setPersistenceEnabled;

    iget-object v0, v0, Lo/setPersistenceEnabled;->asInterface:Lo/getReference;

    iget v1, p0, Lo/setPersistenceEnabled$4;->onNavigationEvent:I

    iget-wide v2, p0, Lo/setPersistenceEnabled$4;->ICustomTabsCallback:J

    invoke-interface {v0, v1, v2, v3}, Lo/getReference;->onMessageChannelReady(IJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
