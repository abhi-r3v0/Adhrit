.class Lin/juspay/hypersdk/naming/ldap/LdapName$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/juspay/hypersdk/naming/ldap/LdapName;->getAll()Ljava/util/Enumeration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lin/juspay/hypersdk/naming/ldap/LdapName;

.field final synthetic val$iter:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lin/juspay/hypersdk/naming/ldap/LdapName;Ljava/util/Iterator;)V
    .locals 0

    iput-object p1, p0, Lin/juspay/hypersdk/naming/ldap/LdapName$1;->this$0:Lin/juspay/hypersdk/naming/ldap/LdapName;

    iput-object p2, p0, Lin/juspay/hypersdk/naming/ldap/LdapName$1;->val$iter:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 1

    iget-object v0, p0, Lin/juspay/hypersdk/naming/ldap/LdapName$1;->val$iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic nextElement()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lin/juspay/hypersdk/naming/ldap/LdapName$1;->nextElement()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextElement()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lin/juspay/hypersdk/naming/ldap/LdapName$1;->val$iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
