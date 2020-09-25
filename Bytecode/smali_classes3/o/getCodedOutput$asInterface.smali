.class public interface abstract Lo/getCodedOutput$asInterface;
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
    name = "asInterface"
.end annotation


# virtual methods
.method public abstract getKeyValue(I)Lo/getCodedOutput$onNavigationEvent;
.end method

.method public abstract getKeyValueCount()I
.end method

.method public abstract getKeyValueList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/getCodedOutput$onNavigationEvent;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNamespace()Ljava/lang/String;
.end method

.method public abstract getNamespaceBytes()Lo/SessionProtobufHelper;
.end method

.method public abstract hasNamespace()Z
.end method
