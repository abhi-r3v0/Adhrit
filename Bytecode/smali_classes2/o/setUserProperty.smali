.class public Lo/setUserProperty;
.super Ljava/lang/Object;


# instance fields
.field protected volatile ICustomTabsCallback:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lo/setUserProperty;->ICustomTabsCallback:I

    return-void
.end method

.method public static final ICustomTabsCallback(Lo/setUserProperty;[BII)V
    .locals 0

    const/4 p2, 0x0

    :try_start_0
    invoke-static {p1, p2, p3}, Lo/setPushRegistrationToken;->ICustomTabsCallback([BII)Lo/setPushRegistrationToken;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/setUserProperty;->ICustomTabsCallback(Lo/setPushRegistrationToken;)V

    invoke-virtual {p1}, Lo/setPushRegistrationToken;->onMessageChannelReady()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Serializing to a byte array threw an IOException (should never happen)."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public ICustomTabsCallback()Lo/setUserProperty;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setUserProperty;

    return-object v0
.end method

.method public ICustomTabsCallback(Lo/setPushRegistrationToken;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lo/setUserProperty;->ICustomTabsCallback()Lo/setUserProperty;

    move-result-object v0

    return-object v0
.end method

.method public final extraCallback()I
    .locals 1

    invoke-virtual {p0}, Lo/setUserProperty;->onNavigationEvent()I

    move-result v0

    iput v0, p0, Lo/setUserProperty;->ICustomTabsCallback:I

    return v0
.end method

.method protected onNavigationEvent()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lo/handleFcmMessage;->onNavigationEvent(Lo/setUserProperty;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
