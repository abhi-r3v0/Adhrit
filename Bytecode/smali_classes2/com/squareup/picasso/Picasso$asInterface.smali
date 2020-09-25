.class public interface abstract Lcom/squareup/picasso/Picasso$asInterface;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/picasso/Picasso;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "asInterface"
.end annotation


# static fields
.field public static final extraCallback:Lcom/squareup/picasso/Picasso$asInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 90
    new-instance v0, Lcom/squareup/picasso/Picasso$asInterface$3;

    invoke-direct {v0}, Lcom/squareup/picasso/Picasso$asInterface$3;-><init>()V

    sput-object v0, Lcom/squareup/picasso/Picasso$asInterface;->extraCallback:Lcom/squareup/picasso/Picasso$asInterface;

    return-void
.end method


# virtual methods
.method public abstract onPostMessage(Lo/newRunLoop;)Lo/newRunLoop;
.end method
