.class public interface abstract Lo/CrashlyticsReport$Session$User$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/CrashlyticsReport$Session$Event$Log$ICustomTabsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CrashlyticsReport$Session$User;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "onPostMessage"
.end annotation


# virtual methods
.method public abstract onHandshakeComplete()V
.end method

.method public abstract onWriteResponse(Lo/withNdkPayload;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/withNdkPayload;",
            "Ljava/util/List<",
            "Lo/CrashlyticsReport$FilesPayload$Builder;",
            ">;)V"
        }
    .end annotation
.end method
