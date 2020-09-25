.class public interface abstract Lo/stringToByteString;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ReportUploader$Provider;


# virtual methods
.method public abstract ICustomTabsCallback()Lo/stringToByteString;
.end method

.method public abstract extraCallback(I)Ljava/lang/Object;
.end method

.method public abstract onNavigationEvent()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract onNavigationEvent(Lo/SessionProtobufHelper;)V
.end method
