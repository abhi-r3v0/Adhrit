.class public interface abstract Lo/reauthenticate;
.super Ljava/lang/Object;


# virtual methods
.method public abstract ICustomTabsCallback()Lo/getMinidumpFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/getMinidumpFile<",
            "Lo/getIdToken;",
            ">;"
        }
    .end annotation
.end method

.method public abstract ICustomTabsCallback(Lo/getIdToken;Landroid/app/Activity;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation
.end method

.method public abstract extraCallback()Lo/getMinidumpFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/getMinidumpFile<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract extraCallback(Lo/detect;)V
.end method

.method public abstract onNavigationEvent(Lo/detect;)V
.end method
