.class public abstract Lo/isLimitAdTrackingEnabled;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/DataHolder$zaa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lo/setShouldSkipGmsCoreVersionCheck<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lo/isLimitAdTrackingEnabled<",
        "TMessageType;TBuilderType;>;>",
        "Ljava/lang/Object;",
        "Lo/DataHolder$zaa;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract ICustomTabsCallback()Lo/isLimitAdTrackingEnabled;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation
.end method

.method public abstract ICustomTabsCallback(Lo/GoogleSignInOptions;Lo/isGooglePlayServicesAvailable;)Lo/isLimitAdTrackingEnabled;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/GoogleSignInOptions;",
            "Lo/isGooglePlayServicesAvailable;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 13
    invoke-virtual {p0}, Lo/isLimitAdTrackingEnabled;->ICustomTabsCallback()Lo/isLimitAdTrackingEnabled;

    move-result-object v0

    return-object v0
.end method

.method protected abstract onMessageChannelReady(Lo/setShouldSkipGmsCoreVersionCheck;)Lo/isLimitAdTrackingEnabled;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation
.end method

.method public final synthetic onPostMessage(Lo/getStartServicePackage;)Lo/DataHolder$zaa;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lo/isLimitAdTrackingEnabled;->mayLaunchUrl()Lo/getStartServicePackage;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    check-cast p1, Lo/setShouldSkipGmsCoreVersionCheck;

    invoke-virtual {p0, p1}, Lo/isLimitAdTrackingEnabled;->onMessageChannelReady(Lo/setShouldSkipGmsCoreVersionCheck;)Lo/isLimitAdTrackingEnabled;

    move-result-object p1

    return-object p1

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "mergeFrom(MessageLite) can only merge messages of the same type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onPostMessage([BIILo/isGooglePlayServicesAvailable;)Lo/isLimitAdTrackingEnabled;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lo/isGooglePlayServicesAvailable;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/vision/zzin;
        }
    .end annotation

    const/4 p2, 0x0

    .line 3
    :try_start_0
    invoke-static {p1, p2, p3, p2}, Lo/GoogleSignInOptions;->extraCallback([BIIZ)Lo/GoogleSignInOptions;

    move-result-object p1

    .line 5
    invoke-virtual {p0, p1, p4}, Lo/isLimitAdTrackingEnabled;->ICustomTabsCallback(Lo/GoogleSignInOptions;Lo/isGooglePlayServicesAvailable;)Lo/isLimitAdTrackingEnabled;

    .line 6
    invoke-virtual {p1, p2}, Lo/GoogleSignInOptions;->onNavigationEvent(I)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/vision/zzin; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 10
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "byte array"

    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3c

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Reading "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " from a "

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " threw an IOException (should never happen)."

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 12
    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 8
    throw p1
.end method
