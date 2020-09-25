.class final Lo/FragmentType;
.super Lo/zzbfh;


# instance fields
.field private final ICustomTabsCallback:Lo/getPaymentMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getPaymentMethod<",
            "Lo/onPostMessage$extraCallback;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public final declared-synchronized onMessageChannelReady(Landroid/location/Location;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lo/FragmentType;->ICustomTabsCallback:Lo/getPaymentMethod;

    new-instance v1, Lo/setThumbnail;

    invoke-direct {v1, p0, p1}, Lo/setThumbnail;-><init>(Lo/FragmentType;Landroid/location/Location;)V

    invoke-virtual {v0, v1}, Lo/getPaymentMethod;->extraCallback(Lo/getPaymentMethod$onMessageChannelReady;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
