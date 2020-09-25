.class public interface abstract Lo/getCodedOutput$onTransact;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/WireFormat$FieldType$4;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getCodedOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "onTransact"
.end annotation


# virtual methods
.method public abstract getAppUpdateTime()J
.end method

.method public abstract getNamespace()Ljava/lang/String;
.end method

.method public abstract getNamespaceBytes()Lo/SessionProtobufHelper;
.end method

.method public abstract getResourceId()I
.end method

.method public abstract hasAppUpdateTime()Z
.end method

.method public abstract hasNamespace()Z
.end method

.method public abstract hasResourceId()Z
.end method
