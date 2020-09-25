.class final Lo/setPersistenceEnabled$3;
.super Lo/getParent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setPersistenceEnabled;->onMessageChannelReady(ILo/getReferenceFromUrl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/setPersistenceEnabled;

.field private synthetic extraCallback:Lo/getReferenceFromUrl;

.field private synthetic onMessageChannelReady:I


# direct methods
.method varargs constructor <init>(Lo/setPersistenceEnabled;Ljava/lang/String;[Ljava/lang/Object;ILo/getReferenceFromUrl;)V
    .locals 0

    .line 349
    iput-object p1, p0, Lo/setPersistenceEnabled$3;->ICustomTabsCallback:Lo/setPersistenceEnabled;

    iput p4, p0, Lo/setPersistenceEnabled$3;->onMessageChannelReady:I

    iput-object p5, p0, Lo/setPersistenceEnabled$3;->extraCallback:Lo/getReferenceFromUrl;

    invoke-direct {p0, p2, p3}, Lo/getParent;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final extraCallback()V
    .locals 3

    .line 352
    :try_start_0
    iget-object v0, p0, Lo/setPersistenceEnabled$3;->ICustomTabsCallback:Lo/setPersistenceEnabled;

    iget v1, p0, Lo/setPersistenceEnabled$3;->onMessageChannelReady:I

    iget-object v2, p0, Lo/setPersistenceEnabled$3;->extraCallback:Lo/getReferenceFromUrl;

    .line 1360
    iget-object v0, v0, Lo/setPersistenceEnabled;->asInterface:Lo/getReference;

    invoke-interface {v0, v1, v2}, Lo/getReference;->onNavigationEvent(ILo/getReferenceFromUrl;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
