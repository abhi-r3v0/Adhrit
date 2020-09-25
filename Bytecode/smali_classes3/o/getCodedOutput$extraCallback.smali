.class public interface abstract Lo/getCodedOutput$extraCallback;
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
    name = "extraCallback"
.end annotation


# virtual methods
.method public abstract getKey()Ljava/lang/String;
.end method

.method public abstract getKeyBytes()Lo/SessionProtobufHelper;
.end method

.method public abstract getValue()Lo/SessionProtobufHelper;
.end method

.method public abstract hasKey()Z
.end method

.method public abstract hasValue()Z
.end method
