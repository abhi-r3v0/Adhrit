.class public interface abstract Lo/AxisTracker$ICustomTabsCallback$Stub;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/AxisTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Stub"
.end annotation


# virtual methods
.method public abstract ICustomTabsCallback(Lo/Event$Action;JLo/AxisTracker$extraCallback;)Lo/AxisTracker$onRelationshipValidationResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract onNavigationEvent()V
.end method
