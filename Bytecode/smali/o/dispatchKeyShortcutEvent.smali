.class public interface abstract annotation Lo/dispatchKeyShortcutEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lo/dispatchKeyShortcutEvent;
        extraCallback = false
        onNavigationEvent = "yyyyMMdd"
        onPostMessage = 0x0
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract ICustomTabsCallback()I
.end method

.method public abstract extraCallback()Z
.end method

.method public abstract onMessageChannelReady()I
.end method

.method public abstract onNavigationEvent()Ljava/lang/String;
.end method

.method public abstract onPostMessage()I
.end method

.method public abstract onTransact()Ljava/lang/String;
.end method
